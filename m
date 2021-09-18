Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D48F5410663
	for <lists+v9fs-developer@lfdr.de>; Sat, 18 Sep 2021 14:24:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mRZO2-0003F6-VH; Sat, 18 Sep 2021 12:24:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <amozonjp-update-account@mnjzw.com>)
 id 1mRZO1-0003F0-Ge
 for v9fs-developer@lists.sourceforge.net; Sat, 18 Sep 2021 12:24:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z86fEW60MAVsvv2spv8xq6eU7kkKwCKrd/hXfueNQFA=; b=f8y4luic66HGDeFpf3YXS22Kdo
 d5m5/vjtcsQAsA4VuJ/HS9vNB0InsoyXIllEkYVrS/oFtpNKaZYsFjug7OYbmqZ+j/rBz95nbtHKW
 kM0hTfhk82VfYAaSdhLdwZmm3m21GyCPxYRwkqOjqg82YkRc5vlgT5sfgF13NgyI2kz8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=z86fEW60MAVsvv2spv8xq6eU7kkKwCKrd/hXfueNQFA=; b=C
 Keo2EIfCxnmEygSMn8/E+5pSeSA7s5xvqjODntqlXZSopqNXPMgpTDEK01rmpY8ZMwsHP4DluXv9P
 pO6MITZ0bYDI2O3HnOKREO5iyzYtEANNoq0Xffj7V0+txLpoS7vaZy6OWTbUxBzsiW3QpAEmK0m+k
 Ty+GyWiArX2sxnmI=;
Received: from mnjzw.com ([107.189.4.168])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mRZO0-0008DJ-2r
 for v9fs-developer@lists.sourceforge.net; Sat, 18 Sep 2021 12:24:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=defult; d=mnjzw.com;
 h=Message-ID:From:To:Subject:Date:MIME-Version:Content-Type;
 i=amozonjp-update-account@mnjzw.com;
 bh=z86fEW60MAVsvv2spv8xq6eU7kkKwCKrd/hXfueNQFA=;
 b=D2HpWaWKUqe54pWik2qq4KvF2sgk+Rh0Ad5UFyWsT7dScsraJf19ieYlMKKnlvBErX/93LTTF4YH
 /9R56pWjQiu4pPKCWuZ6N0hOe96ehB2Rmg53fhAw2M8y6OZyKFVgQo+/q2gMwNJLmeE6DSqBh817
 K8HTik+HOP5zJNpnrpw=
Message-ID: <20210918202357676127@mnjzw.com>
From: "wkbhegjx" <amozonjp-update-account@mnjzw.com>
To: <v9fs-developer@lists.sourceforge.net>
Date: Sat, 18 Sep 2021 20:23:43 +0800
MIME-Version: 1.0
X-Helo-Check: bad, Forged Random Domain (mnjzw.com)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Amazonお客様 誰かがあなたのクレジットカードにログインして商品を購入しようとしていることに気がつきましょう。
    クレジットカードの盗難を防ぎ [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: mnjzw.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-Headers-End: 1mRZO0-0008DJ-2r
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQQW1hem9u44CRMjTjgZjjgYvjgpPmmYI=?=
	=?utf-8?b?6ZaT44GE44Gq44GE5Lul5YaF44Gr44Ot44Kw44Kk44Oz44GY44KH44O8?=
	=?utf-8?b?44G744O85oOF5aCx44Gu44GT44O844GX44KT5pu05paw44KS44GK44Gt?=
	=?utf-8?b?44GM44GE6aGY44GE44GX44G+44GZIQ==?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQoNCg0KQW1hem9u44GK5a6i5qeYDQroqrDjgYvjgYzjgYLjgarjgZ/jga7jgq/jg6zjgrjjg4Pj
g4jjgqvjg7zjg4njgavjg63jgrDjgqTjg7PjgZfjgabllYblk4HjgpLos7zlhaXjgZfjgojjgYbj
gajjgZfjgabjgYTjgovjgZPjgajjgavmsJfjgYzjgaTjgY3jgb7jgZfjgofjgYbjgIINCuOCr+OD
rOOCuOODg+ODiOOCq+ODvOODieOBruebl+mbo+OCkumYsuOBjuOAgeeZu+mMsuOBl+OBn+OCieOB
p+OBjeOCi+OBoOOBkeaXqeOBj+aDheWgseWHpueQhuOCkuabtOaWsOOBmeOCi+OAgg0K44GC44Gq
44Gf44GMMjTmmYLplpPku6XlhoXjgavnorroqo3jgafjgY3jgarjgYTloLTlkIjjga/nlLPjgZfo
qLPjgYLjgorjgb7jgZvjgpPjgILosqHnlKPjga7mkI3lpLHjgavlr77jgZfjgabjga8NCuOBk+OB
ruOCouOCq+OCpuODs+ODiOOBruS9v+eUqOOCkuWItumZkOOBleOBm+OBpuOBhOOBn+OBoOOBjeOB
vuOBmeOAguOBguOCieOBi+OBmOOCgeOBlOeQhuino+OBj+OBoOOBleOBhOOAgg0K44GK5a6i5qeY
44GuIEFtYXpvbiDjgqLjgqvjgqbjg7Pjg4gNCuOCouOCq+OCpuODs+ODiOOBruODoeODvOODq+OC
ouODieODrOOCueeuoeeQhuOCs+ODs+OCveODvOODq+OBq+ODreOCsOOCpOODs+OBl+OAgeaJgOWu
muOBruaJi+mghuOBq+W+k+OBo+OBpuOBj+OBoOOBleOBhOOAguOCouOCq+OCpuODs+ODiOOBruaJ
gOacieaoqeOBruiovOaYjuOBq+OBpOOBhOOBpuOBr+ODmOODq+ODl+OCu+ODs+OCv+ODvOOBruio
mOS6i+OCguS9teOBm+OBpuWPgueFp+OAgg0K54q25oWLOiANCueVsOW4uOOBr+abtOaWsOW+heOB
oeOBp+OBmQ0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEFtYXpvbuOCr+ODquODg+OC
rybjg63jgrDjgqTjg7MNCg0KDQoNCuaVsOaXpeS7peWGheOCouOCq+OCpuODs+ODiOaJgOacieao
qeOCkuOBlOiovOaYjuOBhOOBn+OBoOOBi+OBquOBi+OBo+OBn+WgtOWQiOOAgUFtYXpvbuOCouOC
q+OCpuODs+ODiOOBr+iHquWLleeahOOBq+WJiumZpOOBleOCjOOBvuOBmeOBruOBp+OBlOazqOaE
j+OBj+OBoOOBleOBhOOAgg0KDQoNCuS7iuW+jOOBqOOCguOCiOOCjeOBl+OBj+OBiumhmOOBhOeU
s+OBl+S4iuOBkuOBvuOBmeOAgg0KQW1hem9uIOODgeODvOODoA0KDQoNCg0KIOWIqeeUqOimj+e0
hCAg44OX44Op44Kk44OQ44K344O86KaP57SEICDjg5jjg6vjg5cgwqkgMTk5Ni0yMDIxLCBBbWF6
b24uIEluYy4gb3IgaXRzIGFmZmlsaWF0ZXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxv
cGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
