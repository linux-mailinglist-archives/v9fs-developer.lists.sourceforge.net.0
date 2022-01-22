Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC6D496908
	for <lists+v9fs-developer@lfdr.de>; Sat, 22 Jan 2022 02:03:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nB4ny-0007iT-J8; Sat, 22 Jan 2022 01:02:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <Amazon-account-update@1rs1fo.cn>) id 1nB4nw-0007iK-C3
 for v9fs-developer@lists.sourceforge.net; Sat, 22 Jan 2022 01:02:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/GQGG+mmSp7CAWfZ+N0XT0Yi0/d8fCZK+1i6kHJgUmM=; b=PXbt0Lz2ubx2xXaYO+dUUmuiDN
 d4ujAcC1A5SVhP/5qm8kymIHgDGA4uG7+9rwXaFrY48A/1yEUIOaaIQFYaIUUUJv6R3LmX8zu6JfX
 P+8VP7PpJtVACItijmn5okH5ZkLfRAabsWYNv0Q5flCFS7cn9608WCylZp1er5Jz7DuY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=/GQGG+mmSp7CAWfZ+N0XT0Yi0/d8fCZK+1i6kHJgUmM=; b=g
 3veaKvLuO+RAPxfbh496qfqReYzSk2yETbnw64mDTt44Vazh0rQF85WQnoZC2BQkck6tAP0G+llnv
 SNC7251CfB+nvZyC2qg766++Uhvc0JIHmDLSWKEv6vL3z1F3Lw5ZNELqUWdYZkKQHIwg8Ka2VwIoR
 oQjgnLRj2KyFUkTU=;
Received: from [134.122.198.154] (helo=1rs1fo.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1nB4np-006k29-RM
 for v9fs-developer@lists.sourceforge.net; Sat, 22 Jan 2022 01:02:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=defult; d=1rs1fo.cn;
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 i=Amazon-account-update@1rs1fo.cn;
 bh=/GQGG+mmSp7CAWfZ+N0XT0Yi0/d8fCZK+1i6kHJgUmM=;
 b=KwsbNsAhugy36zsARjUAvQ0Hq5u9J1eMQ3wFUFeLpfJbysUqkSfbp2YX/TqaDyS4Tj3z7takAqPg
 oxdWt1v3n8ArB4K/nF8q6T7ozkcX3R6iRmOhVdCB4LCV6jdwg9f0Cyg04Ll4M0Pj68G1ZdXo71vW
 ZpLkYDBJO/xq4auhn9I=
From: Amazon.co.jp <Amazon-account-update@1rs1fo.cn>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Sat, 22 Jan 2022 08:42:32 +0800
Message-ID: <00a764006cd8$bbfe0855$58482ff4$@jz>
MIME-Version: 1.0
X-Spam-Score: 5.8 (+++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  お客様のご登録のお支払い方法にエラーが発生しました。
    お支払方法に問題があり、プライム特典をご利用いただけない状況です。
    様 Amazonプライムをご利用いただきありがとうございます。
    プライムへ登録の際に設定いただいたお支払い方法認証の段階にエラーが発生しました。そ�
    [...] 
 
 Content analysis details:   (5.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  2.7 FSL_BULK_SIG           Bulk signature with no Unsubscribe
X-Headers-End: 1nB4np-006k29-RM
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?W+mHjeimgV3vvJrjgJBBbWF6b27jg5fjg6k=?=
	=?utf-8?b?44Kk44Og5Lya6LK744Gu44GK5pSv5omV44GE5pa55rOV44Gr5ZWP6aGM?=
	=?utf-8?b?44GM44GC44KK44G+44GZ44CR?=
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

44GK5a6i5qeY44Gu44GU55m76Yyy44Gu44GK5pSv5omV44GE5pa55rOV44Gr44Ko44Op44O844GM
55m655Sf44GX44G+44GX44Gf44CCDQoNCg0KDQoNCg0KIA0KDQrjgYrmlK/miZXmlrnms5Xjgavl
lY/poYzjgYzjgYLjgorjgIHjg5fjg6njgqTjg6DnibnlhbjjgpLjgZTliKnnlKjjgYTjgZ/jgaDj
gZHjgarjgYTnirbms4HjgafjgZnjgIIgIOanmA0KDQpBbWF6b27jg5fjg6njgqTjg6DjgpLjgZTl
iKnnlKjjgYTjgZ/jgaDjgY3jgYLjgorjgYzjgajjgYbjgZTjgZbjgYTjgb7jgZnjgIIg44OX44Op
44Kk44Og44G455m76Yyy44Gu6Zqb44Gr6Kit5a6a44GE44Gf44Gg44GE44Gf44GK5pSv5omV44GE
5pa55rOV6KqN6Ki844Gu5q616ZqO44Gr44Ko44Op44O844GM55m655Sf44GX44G+44GX44Gf44CC
44Gd44Gu44Gf44KB44CB54++5Zyo44CB44GK5a6i5qeY44Gr44Gv44OX44Op44Kk44Og5Lya5ZOh
54m55YW444KS44GU5Yip55So44GE44Gf44Gg44GR44G+44Gb44KT44CC54m55YW444KS44GU5Yip
55So44GE44Gf44Gg44GP44Gr44Gv44CBIO+8k+aXpemWk+S7peWGheOBq+OBiuaUr+aJleOBhOaW
ueazleOBruWGjeeZu+mMsuOCkuOBiumhmOOBhOOBhOOBn+OBl+OBvuOBmeOAguOBiuWuouanmOOB
ruOBiuaUr+aJleOBhOaWueazleOBq+OCouOCr+OCu+OCuSAgQW1hem9u44OX44Op44Kk44Og44Gr
55m76Yyy44GX44GfQW1hem9uLmNvLmpw44Gu44Ki44Kr44Km44Oz44OI44KS5L2/55So44GX44Gm
44K144Kk44Oz44Kk44OzICDnmbvpjLLmuIjjgb/jga7jgYrmlK/miZXmiYvmrrXjga7mnInlirnm
nJ/pmZDjgpLmm7TmlrDjgIHjgb7jgZ/jga/mlrDjgZfjgYTmlK/miZXjgYTmiYvmrrXjgpLov73l
iqDjgZfjgIHjgIzkvJrlk6HnibnlhbjjgajjgYrmlK/miZXjgYTmlrnms5Xjga7norroqo3jgI3j
g5zjgr/jg7PjgpLjgq/jg6rjg4Pjgq8NCg0KICDkvJrlk6HnibnlhbjjgajjgYrmlK/miZXjgYTm
lrnms5Xjga7norroqo0gIA0KDQoNCuOCqOODqeODvOOBruWOn+WboOOBr+anmOOAheOBp+OBmeOB
jOOAgeacrOOCqOODqeODvOOBjOeZuueUn+OBmeOCi+S+i+OBqOOBl+OBpuOBr+OAgeOBiuaUr+aJ
leOBhOaWueazleOBruacieWKueacn+mZkOOBjOWIh+OCjOOBpuOBhOOCi+WgtOWQiOOBjOWkmuOB
j+imi+WPl+OBkeOCieOCjOOBvuOBmeOAguips+e0sOOBruWOn+WboOOBq+OBpOOBjeOBvuOBl+OB
puOBr+OBlOeZu+mMsuOBhOOBn+OBoOOBhOOBn+OBiuaUr+aJleaJi+auteOBruaPkOS+m+S8muek
vu+8iOOCr+ODrOOCuOODg+ODiOS8muekvuetie+8ieOBq+OBiuWVj+WQiOOBm+S4i+OBleOBhOOA
giANCg0K77yT5pel6ZaT5Lul5YaF44Gr44GK5pSv5omV44GE5pa55rOV44GM5YaN55m76Yyy44GV
44KM44Gq44GE5aC05ZCI44CB44GU55m76Yyy44GuQW1hem9uIOODl+ODqeOCpOODoOS8muWToeiz
h+agvOOBr+iHquWLleeahOOBq+OCreODo+ODs+OCu+ODq+OBleOCjOOBvuOBmeOAgg0K5LuK5b6M
44Go44KCQW1hem9uLmNvLmpw44KS44KI44KN44GX44GP44GK6aGY44GE44GE44Gf44GX44G+44GZ
44CCDQoNCg0KDQoNCsKpIDIwMjIgQW1hem9uLmNvbSwgSW5jLiBvciBpdHMgYWZmaWxpYXRlcy4g
QWxsIHJpZ2h0cyByZXNlcnZlZC4gQW1hem9uLCANCkFtYXpvbi5jby5qcCwgQW1hem9uIFByaW1l
LCBQcmltZSDjgYrjgojjgbNBbWF6b24uY28uanAg44Gu44Ot44K044GvQW1hem9uLmNvbSwgSW5j
Lg0K44G+44Gf44Gv44Gd44Gu6Zai6YCj5Lya56S+44Gu5ZWG5qiZ44Gn44GZ44CCDQpBbWF6b24u
Y29tLCA0MTAgVGVycnkgQXZlbnVlIE4uLCBTZWF0dGxlLCBXQSA5ODEwOS01MjEwIA0KDQrjgZPj
ga7jg6Hjg4Pjgrvjg7zjgrjjga8gIOOBq+mAgeS/oeOBleOCjOOBvuOBl+OBn+OAgg0KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVy
IG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6
Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
