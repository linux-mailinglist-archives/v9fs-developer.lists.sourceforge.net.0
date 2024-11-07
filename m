Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9392A9BFD31
	for <lists+v9fs-developer@lfdr.de>; Thu,  7 Nov 2024 05:10:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1t8tqS-0005kp-AN;
	Thu, 07 Nov 2024 04:10:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <MyJcb@alphrc.com>) id 1t8tqQ-0005kb-Qd
 for v9fs-developer@lists.sourceforge.net;
 Thu, 07 Nov 2024 04:10:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Message-ID:Mime-Version:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HwPmahCHCTZBD7Dv6FbSXXUptWLD+L1LK0kfOy1Cd+U=; b=ECbqBIxccrJGv2L7JX4KmgUGog
 a6bqQpNDgJHmlB0zPk/HGe9z055vLBBeJRwbdllLwK/26mCbfonwA5MBB9Fr/dS/cfXSHI3q1Fnqy
 xujbGijC/weh9wD2bQ/Xp6pCIW+JszRgb+hAQ6PYgYvi4Zpfs29vfVuoRcLUSJ3pnYFA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Message-ID:Mime-Version:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HwPmahCHCTZBD7Dv6FbSXXUptWLD+L1LK0kfOy1Cd+U=; b=J
 pRDxDXPJrhgQb7YVBX6hFrMnmCjPk/oqZ3z5wgdxM+dvgrIVLxk6OCoHQ9yqKEsr9RPk2n2He6exF
 LcI8i+gNSRZe9Ja9PNUi7oaNTEgNwCKwYADB4U8tPlXYzOnYXroaxFSUxkl6zcB9JICbb7g4jeg8q
 q5yxrDsNdVw5Pn34=;
Received: from mail4.alphrc.com ([23.95.248.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t8tqP-00016G-GB for v9fs-developer@lists.sourceforge.net;
 Thu, 07 Nov 2024 04:10:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=alphrc.com; 
 h=Date:From:To:Subject:Mime-Version:Message-ID:Content-Type;
 i=MyJcb@alphrc.com;
 bh=HwPmahCHCTZBD7Dv6FbSXXUptWLD+L1LK0kfOy1Cd+U=;
 b=JiLFxT2j/1oBL2gNzb6cpoJhFXq5TyEVN3dnhksFJFo1/0ByfKvlUq44gBt9RGRwdWMRYo/zU9QA
 pIs4iTv3DRtfak+KPP69t9qhR3XRlkLZszRvsVcIrq2Vih4FPu/P6TQR1tM1xC40X4rpUDAA+TRc
 tgOCz7sR5aLhDLQv17s=
Date: Thu, 7 Nov 2024 13:09:41 +0900
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
X-Has-Attach: no
Mime-Version: 1.0
Message-ID: <202411071309544433505@alphrc.com>
X-Spam-Score: 7.9 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  制限解除に関するご案内 本メールは、手続きが完了していないお客様にお送りしております。
    先日はご協力いただきありがとうございました。しかし、手続きが未完了のため、現在アカウントは引き続き一時停止となっております。
    以下のリ� [...] 
 
 Content analysis details:   (7.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
                             blocklist
                             [URIs: burooespace.com]
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [23.95.248.170 listed in zen.spamhaus.org]
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: burooespace.com]
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: burooespace.com]
  0.1 URIBL_CSS_A            Contains URL's A record listed in the Spamhaus CSS
                             blocklist
                             [URIs: alphrc.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-Headers-End: 1t8tqP-00016G-GB
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?SkNC44Kr44O844OJ44Gu5omL57aa44GN44KS?=
	=?utf-8?b?5a6M5LqG44GX44CB44Ki44Kr44Km44Oz44OI44KS5YaN6ZaL44GX44Gm?=
	=?utf-8?b?44GP44Gg44GV44GE?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
From: MyJCB via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: MyJCB <MyJcb@alphrc.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

5Yi26ZmQ6Kej6Zmk44Gr6Zai44GZ44KL44GU5qGI5YaFIA0K5pys44Oh44O844Or44Gv44CB5omL
57aa44GN44GM5a6M5LqG44GX44Gm44GE44Gq44GE44GK5a6i5qeY44Gr44GK6YCB44KK44GX44Gm
44GK44KK44G+44GZ44CCIA0KICANCuWFiOaXpeOBr+OBlOWNlOWKm+OBhOOBn+OBoOOBjeOBguOC
iuOBjOOBqOOBhuOBlOOBluOBhOOBvuOBl+OBn+OAguOBl+OBi+OBl+OAgeaJi+e2muOBjeOBjOac
quWujOS6huOBruOBn+OCgeOAgeePvuWcqOOCouOCq+OCpuODs+ODiOOBr+W8leOBjee2muOBjeS4
gOaZguWBnOatouOBqOOBquOBo+OBpuOBiuOCiuOBvuOBmeOAgg0K5Lul5LiL44Gu44Oq44Oz44Kv
44KI44KK5omL57aa44GN44KS5YaN6ZaL44GX44Gm44GP44Gg44GV44GE44CCIA0KSkNC44Kr44O8
44OJDQrvvIjjgqvjg7zjg4nnlarlj7fjgYzjgIwzNTTjgI3jgIwzNTXjgI3jgaflp4vjgb7jgotK
Q0Ljgqvjg7zjg4njgYzlr77osaHjgafjgZnvvIkgDQoNCuOBk+OBoeOCieOBi+OCieaJi+e2muOB
jeOCkuWGjemWi+OBl+OBpuOBj+OBoOOBleOBhCANCg0K44CQ5pyJ5Yq55pyf6ZmQ44CRMjAyNOW5
tDEx5pyIMzDml6Xjgb7jgacNCuODu+KAu+WgtOWQiOOBq+OCiOOBo+OBpuOBr+OAgeaJi+e2muOB
jeOBruacgOW+jOOBq+OAgeS4jeato+OBquaJi+e2muOBjeOCkumYsuatouOBmeOCi+OBn+OCgeOA
gemKgOihjOOBq+OBiumbu+ipseOBhOOBn+OBoOOBjeOAgeacrOS6uueiuuiqjeOBjOW/heimgeOB
qOOBquOCi+WgtOWQiOOBjOOBlOOBluOBhOOBvuOBmeOAgiANCiAgDQrvvJzjgZTms6jmhI/jgY/j
gaDjgZXjgYTvvJ4NCg0K44O744GZ44Gn44Gr5omL57aa44GN44KS5a6M5LqG44GV44KM44Gm44GE
44KL44GK5a6i5qeY44Gr44KC44CB6Kqk44Gj44Gm5pys44Oh44O844Or44GM6YCB5L+h44GV44KM
44KL5aC05ZCI44GM44GU44GW44GE44G+44GZ44CC44Gd44Gu6Zqb44Gr44Gv44CB5omL57aa44GN
44KS5YaN5bqm6KGM44GG5b+F6KaB44Gv44GU44GW44GE44G+44Gb44KT44CCDQoNCuODu+WuieWF
qOeiuuS/neOBruOBn+OCgeOAgeWGjeaJi+e2muOBjeOBjOS4reaWreOBleOCjOOBn+WgtOWQiOOA
geS4iuiomOODquODs+OCr+OBr+eEoeWKueOBqOOBquOCiuOBvuOBmeOAguOBneOBrumam+OBr+OA
geWGjemAgeOBleOCjOOBn+ODoeODvOODq+OBi+OCieOBiuaJi+e2muOBjeOCkuOBiumhmOOBhOOB
hOOBn+OBl+OBvuOBmeOAgg0KDQogIA0K5pys44Oh44O844Or44Gu6YWN5L+h5YGc5q2i44O75L+d
5a2Y44GV44KM44Gf44GK5a6i5qeY5oOF5aCx44Gu5YmK6Zmk44KS5biM5pyb44GV44KM44KL5pa5
44Gv44GT44Gh44KJDQrmnKzku7bjgavplqLjgZnjgovjgYrllY/jgYTlkIjjgo/jgZsNCkpDQuS4
gOiIrOOCq+ODvOODieS8muWToeanmOOAgDA1NzAtMDYwLTEyMw0KSkNC44K044O844Or44OJ44Kr
44O844OJ5Lya5ZOh5qeY44CAMDU3MC0wNzAtMDM1DQpKQ0Ljg5fjg6njg4Hjg4rjgqvjg7zjg4nj
g7vjgrbjg7vjgq/jg6njgrnkvJrlk6Hmp5jjgIAwNTcwLTAwOC00MDANCg0K4oC75pys44Oh44O8
44Or44Ki44OJ44Os44K544Gv6YCB5L+h5bCC55So44Gn44GZ44CC5pys44GU5qGI5YaF44Gr6Zai
44GZ44KLReODoeODvOODq+OBp+OBruOBiuWVj+OBhOWQiOOCj+OBm+OBr+WPl+OBkeS7mOOBkeOB
puOBiuOCiuOBvuOBm+OCk+OAgiANCsKpIEpDQiBDby4sTHRkLiANCg0KDQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGlu
ZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
