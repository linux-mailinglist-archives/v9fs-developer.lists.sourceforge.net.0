Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F419F4BFFD8
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Feb 2022 18:11:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nMYhc-0006hH-RZ; Tue, 22 Feb 2022 17:11:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <support-amazon.jp@lywhszt.cn>) id 1nMYhb-0006hB-ML
 for v9fs-developer@lists.sourceforge.net; Tue, 22 Feb 2022 17:11:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+8KH8xhbXrmTt7Wb6NtJd3fqaFEv5asEpIjy9InEQvQ=; b=a6aq43vp3bnjxdaqa5vMQd9l+U
 yffwLYq79G2Ow5S4A9XM9//GW/EC+vZE0yWqfngGB5w2GaYwGNrsOvY4/4eCuyYy1mDmTuWHEPedX
 +/oAicw8tENuy3M3q9L3wFizY7ypq7OdUt0jH0MQrxPGTPVOPdyij8WbTQfJrHAaNC6g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+8KH8xhbXrmTt7Wb6NtJd3fqaFEv5asEpIjy9InEQvQ=; b=K
 AEQdR041bqYmcLX5WRVQOjlz7gKsk8gx8Azh3u0D8MDgqYEVBuWCzd/R2K7Oq962BYmb+USwIBQw2
 3gK+XOEMGrOkr30A5IPcHyqZKknu4pTrhmalDKaP6sDQqOliKWLaobgXykunEcYrS9FdWmJAAMwlD
 dnu41AIihnhWl5cM=;
Received: from [139.198.5.156] (helo=mail.lywhszt.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nMYhW-00BV6u-Sx
 for v9fs-developer@lists.sourceforge.net; Tue, 22 Feb 2022 17:11:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=lywhszt.cn; 
 h=Date:From:To:Subject:Message-ID:Mime-Version:Content-Type;
 i=support-amazon.jp@lywhszt.cn;
 bh=+8KH8xhbXrmTt7Wb6NtJd3fqaFEv5asEpIjy9InEQvQ=;
 b=KOBNGzZ6X5ZFVDYrRIqt4UyEh2OAYqo+eY40c/xSmyWT+zJFsh9FDSRm5D9xVz39adKY1BXO1Lyx
 7WwbZmolGFRYrlu7/Qlyf4nMwz3Lqej56CsljaellPZslPM84+zMIQH+0+uCU1JtPWdH9Q3VV7yA
 6Vxp4/UEnQMSgZS+C98=
Date: Wed, 23 Feb 2022 02:13:15 +0900
From: "Amazon" <support-amazon.jp@lywhszt.cn>
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <20220223021326287307@lywhszt.cn>
Mime-Version: 1.0
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Amazon お客様 平素は Amazon.co.jpをご利用いただき、誠にありがとうございます。
    ご利用の Amazon.co.jpアカウントで異常な活動が検出されたため、アカウ
    [...] 
 
 Content analysis details:   (1.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_FONT_FACE_BAD     BODY: HTML font face is not a word
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nMYhW-00BV6u-Sx
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQQW1hem9u44CR44Ki44Kr44Km44Oz44OI?=
	=?utf-8?b?44Gu5Yip55So54q25rOB44KS44GU56K66KqN44GP44Gg44GV44GE44CC?=
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

DQoNCg0KDQpBbWF6b24g44GK5a6i5qeYDQrlubPntKDjga8gQW1hem9uLmNvLmpw44KS44GU5Yip
55So44GE44Gf44Gg44GN44CB6Kqg44Gr44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CC
DQrjgZTliKnnlKjjga4gQW1hem9uLmNvLmpw44Ki44Kr44Km44Oz44OI44Gn55Ww5bi444Gq5rS7
5YuV44GM5qSc5Ye644GV44KM44Gf44Gf44KB44CB44Ki44Kr44Km44Oz44OI44KS5LiA5pmC5L+d
55WZ44Gr44GX44CB5L+d55WZ5Lit44Gu44GU5rOo5paH44KE44K144OW44K544Kv44Oq44OX44K3
44On44Oz44KS44Kt44Oj44Oz44K744Or44GE44Gf44GX44G+44GX44Gf44CCDQrjgq/jg6zjgrjj
g4Pjg4jjgqvjg7zjg4njga7nm5fpm6PjgpLpmLLjgZDjgZ/jgoHjgIHjg63jgrDjgqTjg7Plvozj
gZnjgZDjgavmg4XloLHjgpLmm7TmlrDjgZfjgabjgY/jgaDjgZXjgYTjgIINCuOBguOBquOBn+OB
jDI05pmC6ZaT5Lul5YaF44Gr56K66KqN44Gn44GN44Gq44GE5aC05ZCI44Gv55Sz44GX6Kiz44GC
44KK44G+44Gb44KT44CC44GC44Gq44Gf44Gu6LKh55Sj44Gu5a6J5YWo44Gu44Gf44KB44Gr44CB
44GT44Gu44Ki44Kr44Km44Oz44OI44Gu5L2/55So44KS5Yi26ZmQ44GX44G+44GZ44CC44GC44KJ
44GL44GY44KB44GU55CG6Kej44GP44Gg44GV44GE44CCDQrmnKzku7bjgavjgaTjgYTjgabjgZTo
v7fmg5HjgpLjgYrjgYvjgZHjgZfjgb7jgZfjgZ/jgZPjgajjgpLjgYroqavjgbPnlLPjgZfkuIrj
gZLjgb7jgZnjgIINCuS9leWNkuOAgeOCiOOCjeOBl+OBj+OBiumhmOOBhOeUs+OBl+S4iuOBkuOB
vuOBmeOAgg0KDQrjgYrlrqLmp5jjga4gQW1hem9uIOOCouOCq+OCpuODs+ODiA0KQW1hem9u44OB
44O844Og44Gv44GC44Gq44Gf44Gu44Ki44Kr44Km44Oz44OI44Gu54q25oWL44GM55Ww5bi444Gn
44GC44KL44GT44Go44KS55m66KaL44GX44G+44GX44Gf44CC44Ki44Kr44Km44Oz44OI5omA5pyJ
5qip44Gu6Ki85piO44KS44GU6Ieq6Lqr44Gn6KGM44GG5aC05ZCI44Gv44CBQW1hem9uIOeuoeeQ
huOCs+ODs+OCveODvOODq+OBq+ODreOCsOOCpOODs+OBl+OAgeaJgOWumuOBruaJi+mghuOBp+OB
iuaJi+e2muOBjeOBj+OBoOOBleOBhOOAgg0K54q25oWLOiANCueVsOW4uOOBr+abtOaWsOW+heOB
oeOBp+OBmQ0KQW1hem9u44Kv44Oq44OD44KvJuODreOCsOOCpOODsw0KDQoNCg0KDQoNCg0KDQpB
bWF6b24uY28uanDjga7jgb7jgZ/jga7jgZTliKnnlKjjgpLjgYrlvoXjgaHjgZfjgabjgYrjgorj
gb7jgZnjgIINCg0KDQoNCg0KwqkgMTk5Ni0yMDIyLCBBbWF6b24uIEluYy4gb3IgaXRzIGFmZmls
aWF0ZXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlm
cy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRl
dmVsb3Blcgo=
