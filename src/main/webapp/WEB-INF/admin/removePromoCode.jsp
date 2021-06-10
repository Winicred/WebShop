<%@page contentType="text/html" pageEncoding="UTF-8" %>
<h3 class="text-center">Удалить категорию</h3>

<form action="removePromoCode" class="mt-5" method="post">
    <div class="input-group flex-nowrap w-25 my-3 mx-auto">
        <span class="input-group-text">Выберите промо-код</span>
        <select class="form-select" name="promoCodeId" required>
            <c:forEach var="promoCode" items="${promoCodeList}" varStatus="promoCodeId">
                <option value="${promoCode.id}">${promoCodeId.count}. ${promoCode.promoCodeName}</option>
            </c:forEach>
        </select>
    </div>

    <div class="row w-25 mx-auto mt-5">
        <div class="w-50 mx-auto">
            <input type="submit" class="btn btn-primary w-100" value="Удалить промо-код">
        </div>
    </div>
</form>