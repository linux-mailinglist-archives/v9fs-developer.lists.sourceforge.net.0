Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B56F243B3D0
	for <lists+v9fs-developer@lfdr.de>; Tue, 26 Oct 2021 16:19:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Mime-Version:Message-ID:To:Date:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oKww1hTqezt6dR32X/hnH9zYybI7AnTMFrM52l4SkpA=; b=Lfzja+JiwoTQJjT5X0BhcEwGM/
	djg1yla2So/5gj4PXc19PjhWk/mNGLvDNo7y27DlddSYQp3n9G4CiZFQvTbChkppxw8i2h2LG/XDH
	bcjsIuYaIKyg82/7WCto1FasFbW1RSfp60TUXGd4ZkteQLADKjy0fCv2gvfjqlYQ7UmY=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mfNIg-0001rM-Ti; Tue, 26 Oct 2021 14:19:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <easmv@amazon.server.co.jp>) id 1mfNIf-0001r2-Jt
 for v9fs-developer@lists.sourceforge.net; Tue, 26 Oct 2021 14:19:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VsYYqEV3e8YU3Y3csqEVT++n915Y6GjPhT+HN9kHjek=; b=G4m0davdj0tNgIbmqdF2lsV/jM
 SyKsLceMzsSa9+Vqv7htQdv9q4sFTlBHidVOhfPeLx+uRHeq4rcI0Ad1xongSvQqlZFuxlPDmwodw
 xn1CG7H6iFIkxoScfVfKkbR4QOzjEHev6Vofly+2sFDGuJXzzbP1UIGlav11mukBbIaE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=VsYYqEV3e8YU3Y3csqEVT++n915Y6GjPhT+HN9kHjek=; b=d
 Zq7PVRTeWwMOBUA+Z5eHuuJBiuPydACAYcpr85R5Lvq1P5qsCTb0NbzHe2j9feE2cN7Wy73BwhAc8
 HKRyrziTlytjDNCUmz14lIZt8HuBdhrKNG1O2JI/dUcXmQcLAMqf5i14xNFXB8MIWN7xnOn5h+Bx7
 SXbLjEyaW2BDrKYI=;
Received: from [101.36.64.84] (helo=amazon.server.co.jp)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1mfNI9-00H7wb-FC
 for v9fs-developer@lists.sourceforge.net; Tue, 26 Oct 2021 14:19:37 +0000
Date: Tue, 26 Oct 2021 22:19:00 +0800
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <20211026221909635450@amazon.server.co.jp>
X-Priority: 1 (Highest)
X-mailer: Foxmail 6, 13, 102, 15 [cn]
Mime-Version: 1.0
X-Headers-End: 1mfNI9-00H7wb-FC
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?QW1hem9u44OX44Op44Kk44Og5Lya6LK744Gu?=
	=?utf-8?b?44GK5pSv5omV44GE5pa55rOV44Gr5ZWP6aGM44GM44GC44KK44G+44GZ?=
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
From: "Amazon.co.jp via V9fs-developer" <v9fs-developer@lists.sourceforge.net>
Reply-To: "Amazon.co.jp" <account-update@amazon.co.jp>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

ICDjgYrmlK/miZXmlrnms5XjgavllY/poYzjgYzjgYLjgorjgIHjg5fjg6njgqTjg6Dnibnlhbjj
gpLjgZTliKnnlKjjgYTjgZ/jgaDjgZHjgarjgYTnirbms4HjgafjgZnjgIINCnY5ZnMtZGV2ZWxv
cGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldOOAgeOBk+OCk+OBq+OBoeOBr+OAgg0KDQpBbWF6b27j
g5fjg6njgqTjg6DjgpLjgZTliKnnlKjjgYTjgZ/jgaDjgY3jgYLjgorjgYzjgajjgYbjgZTjgZbj
gYTjgb7jgZnjgIIgDQoNCuOBlOaMh+WumuOBhOOBn+OBoOOBhOOBn+OBiuWuouanmOOBruOBiuaU
r+aJleOBhOaWueazleOBjOaJv+iqjeOBleOCjOOBquOBhOOBn+OCgeOAgUFtYXpvbuODl+ODqeOC
pOODoOeEoeaWmeS9k+mok+OCkuOBlOWIqeeUqOOBhOOBn+OBoOOBkeOBvuOBm+OCk+OAgkFtYXpv
buODl+ODqeOCpOODoOeEoeaWmeS9k+mok+OBr+eEoeaWmeOBp+OBmeOBjOOAgeOBlOeZu+mMsuOB
rumam+OBq+OBr+mBqeeUqOWPr+iDveOBquOBiuaUr+aJleOBhOaWueazleOCkueiuuiqjeOBleOB
m+OBpuOBhOOBn+OBoOOBjeOBvuOBmeOAguOBk+OCjOOBr+OAgeOBlOeZu+mMsuaZguOBq+OBlOWQ
jOaEj+OBhOOBn+OBoOOBhOOBn+OCiOOBhuOBq+OAgeeEoeaWmeS9k+mok+acn+mWk+OBrue1guS6
huaZguOBq+iHquWLleeahOOBq+acieaWmeS8muWToeacn+mWk+OBuOenu+ihjOOBmeOCi+mam+OB
q+OAgeS8muWToeiyu+OCkuiri+axguOBleOBm+OBpuOBhOOBn+OBoOOBj+OBn+OCgeOBp+OBmeOA
giANCg0KMzDml6Xku6XlhoXjgavjgIHjgqLjg57jgr7jg7PjgYvjgonjga7oq4vmsYLjgbjjga7j
gYrmlK/miZXjgYTjgYznorroqo3jgafjgY3jgarjgYTpmZDjgorjgIHjgYrlrqLmp5jjga5BbWF6
b27jg5fjg6njgqTjg6Djga7nmbvpjLLjga/jgq3jg6Pjg7Pjgrvjg6vjgZXjgozjgIHnhKHmlpnk
vZPpqJPjga/jgZTliKnnlKjjgYTjgZ/jgaDjgZHjgarjgY/jgarjgorjgb7jgZnjgIINCuS7luOB
ruacieWKueOBquaUr+aJleaWueazleOCkuabtOaWsOODu+i/veWKoOOBl+OAgUFtYXpvbuODl+OD
qeOCpOODoOOBrueJueWFuOOCkuOBlOWIqeeUqOOBleOCjOOBn+OBhOWgtOWQiOOBr+OAgeS7peS4
i+OBruaJi+mghuOBq+W+k+OBo+OBpuabtOaWsOOBl+OBpuOBj+OBoOOBleOBhOOAgiANCuaUr+aJ
leaWueazleOCkuabtOaWsOOBmeOCiw0KDQrjgYrlrqLmp5jjga7jgYrmlK/miZXjgYTmlrnms5Xj
gavjgqLjgq/jgrvjgrlBbWF6b27jg5fjg6njgqTjg6DjgavnmbvpjLLjgZfjgZ9BbWF6b24uY28u
anDjga7jgqLjgqvjgqbjg7Pjg4jjgpLkvb/nlKjjgZfjgabjgrXjgqTjg7PjgqTjg7MgDQrnmbvp
jLLmuIjjgb/jga7jgYrmlK/miZXmiYvmrrXjga7mnInlirnmnJ/pmZDjgpLmm7TmlrDjgIHjgb7j
gZ/jga/mlrDjgZfjgY/mlK/miZXjgYTmiYvmrrXjgpLov73liqDjgZfjgIHjgIzntprooYzjgI3j
g5zjgr/jg7PjgpLjgq/jg6rjg4Pjgq8gDQrnj77lnKjjgZTmjIflrprjga7jgYrmlK/miZXjgYTm
lrnms5XjgYzmib/oqo3jgZXjgozjgarjgYTljp/lm6Djga/jgIHmj5DmkLrkvJrnpL4o44Kv44Os
44K444OD44OI44Kr44O844OJ5Lya56S+562JKeOBruS6i+aDheOBq+OCiOOCiueVsOOBquOCiuOB
vuOBmeOBjOOAgeWIqeeUqOWPr+iDvemZkOW6pumhjeOBrui2hemBjuOAgeacieWKueacn+mZkOWI
h+OCjOOAgeOCq+ODvOODieWIqeeUqOS4jeWPr+OBquOBqeOBjOiAg+OBiOOCieOCjOOBvuOBmeOA
guWkp+WkieOBiuaJi+aVsOOBp+OBmeOBjOips+e0sOOBq+OBpOOBhOOBpuOBr+OCteODvOODk+OC
ueOBruaPkOS+m+WFg+S8muekvuOBq+ebtOaOpeOBiuWVj+OBhOWQiOOCj+OBm+OBj+OBoOOBleOB
hOOAgiANCg0KQW1hem9uLmNvLmpw44KS44GU5Yip55So44GE44Gf44Gg44GN44CB44GC44KK44GM
44Go44GG44GU44GW44GE44G+44GZ44CCIA0K5LuK5b6M44Go44KCQW1hem9uLmNvLmpw44KS44KI
44KN44GX44GP44GK6aGY44GE44GE44Gf44GX44G+44GZ44CCIA0KDQpBbWF6b24uY28uanDjgqvj
grnjgr/jg57jg7zjgrXjg7zjg5PjgrkgDQoNCg0KDQrjgr/jgqTjg6Djgrvjg7zjg6sg44OX44Op
44Kk44Og54m55YW4IOOCouOCq+OCpuODs+ODiCDjg5jjg6vjg5cNCsKpIDIwMjEgQW1hem9uLmNv
bSwgSW5jLiBvciBpdHMgYWZmaWxpYXRlcy4gQWxsIHJpZ2h0cyByZXNlcnZlZC4gQW1hem9uLA0K
QW1hem9uLmNvLmpwLCBBbWF6b24gUHJpbWUsIFByaW1lIOOBiuOCiOOBs0FtYXpvbi5jby5qcCDj
ga7jg63jgrTjga8gQW1hem9uLmNvbSwgSW5jLuOBviDjgZ/jga/jgZ3jga7plqLpgKPkvJrnpL7j
ga7llYbmqJnjgafjgZnjgIINCkFtYXpvbi5jb20sIDQxMCBUZXJyeSBBdmVudWUgTi4sIFNlYXR0
bGUgQ1MsIFdBIDk4MTA5LTUyMTAgCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBs
aXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMv
bGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
