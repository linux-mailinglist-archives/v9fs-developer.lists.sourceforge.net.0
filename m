Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E52BE480CB6
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Dec 2021 20:05:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n2HnB-0001to-OH; Tue, 28 Dec 2021 19:05:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <support-amazon.jp@ndihfok.cn>) id 1n2HnB-0001th-59
 for v9fs-developer@lists.sourceforge.net; Tue, 28 Dec 2021 19:05:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L4iTFUAeHqZFEk8qewP8Rbp3SXdZW9aj0MrlEwHBGkE=; b=mkmKiUytxrrmqdAarj1dUTHOZV
 U13LQLDR/mwPWkBJjc3ADnRHbH56uhigw1+1CV0HMAYY72H6PrA3d54ZT6ZKWwOi4fNoMoU7eZXlh
 jtlGhUCivKOEHqBDMwLHQPM+4V2xHDbPXpW1vWAxIx7u88+4ES5CAVOi8Gn2mZjlfMPo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=L4iTFUAeHqZFEk8qewP8Rbp3SXdZW9aj0MrlEwHBGkE=; b=B
 i08o7lujrg51Vuetc8gAr45aSNrunPf5Uh01WriE7KSek3XJtb2gIHFShqqRvM35SgCrkcfegJni5
 awmDbnhNf4Q2KMHa4bS5F24Yd+cTItcmJqiozcqnq5pDH1m9YuYskCzEBjDiT6PEoEuYcLduTQBI9
 tqikC7kQkCEcCrF4=;
Received: from ndihfok.cn ([106.75.100.34] helo=mail.ndihfok.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n2HnA-00C9cs-4D
 for v9fs-developer@lists.sourceforge.net; Tue, 28 Dec 2021 19:05:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=ndihfok.cn; 
 h=Date:From:To:Subject:Message-ID:Mime-Version:Content-Type;
 i=support-amazon.jp@ndihfok.cn;
 bh=L4iTFUAeHqZFEk8qewP8Rbp3SXdZW9aj0MrlEwHBGkE=;
 b=p+sDyjwSyQyowprZv/MA9/N480W/Zno7TUd/QPelTpJ6EKCW1OKGc0wZPyN3d3ECfUStCqXhlKjb
 7coKn6LTvZZq3fLZ9ZBa6dtUdPUCtZVRIMUxF7z8AmKG5Hav+2OKo5OPpdCOwqgT7hRuLlHv9zgH
 CQR+NXIb51pO2uPSvqY=
Date: Wed, 29 Dec 2021 03:46:22 +0900
From: "Amazon.co.jp" <support-amazon.jp@ndihfok.cn>
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <20211229034628606302@ndihfok.cn>
Mime-Version: 1.0
X-Spam-Score: 5.9 (+++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  不正なアクティビティが検知されました 平素は、Amazonをご利用いただき、誠にありがとうございます。
    誰かがあなたのAmazonアカウントにログインして商品を購入しようとしていることに注意してください。
    クレジットカードの盗難を防ぐため、ログイ� [...] 
 
 Content analysis details:   (5.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  2.5 URIBL_DBL_PHISH        Contains a Phishing URL listed in the Spamhaus
                             DBL blocklist
                             [URIs: ndihfok.cn]
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [106.75.100.34 listed in zen.spamhaus.org]
  0.1 URIBL_CSS_A            Contains URL's A record listed in the Spamhaus CSS
                             blocklist
                             [URIs: ndihfok.cn]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_FONT_FACE_BAD     BODY: HTML font face is not a word
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
X-Headers-End: 1n2HnA-00C9cs-4D
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQQW1hem9u44CR44Ki44Kr44Km44Oz44OI?=
	=?utf-8?b?5oOF5aCx44KS5pmC6ZaT5YaF44Gr5pu05paw44GX44Gm44GP44Gg44GV?=
	=?utf-8?b?44GE?=
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

DQoNCiANCg0KDQrkuI3mraPjgarjgqLjgq/jg4bjgqPjg5Pjg4bjgqPjgYzmpJznn6XjgZXjgozj
gb7jgZfjgZ8gDQrlubPntKDjga/jgIFBbWF6b27jgpLjgZTliKnnlKjjgYTjgZ/jgaDjgY3jgIHo
qqDjgavjgYLjgorjgYzjgajjgYbjgZTjgZbjgYTjgb7jgZnjgIINCg0KDQoNCuiqsOOBi+OBjOOB
guOBquOBn+OBrkFtYXpvbuOCouOCq+OCpuODs+ODiOOBq+ODreOCsOOCpOODs+OBl+OBpuWVhuWT
geOCkuizvOWFpeOBl+OCiOOBhuOBqOOBl+OBpuOBhOOCi+OBk+OBqOOBq+azqOaEj+OBl+OBpuOB
j+OBoOOBleOBhOOAgg0K44Kv44Os44K444OD44OI44Kr44O844OJ44Gu55uX6Zuj44KS6Ziy44GQ
44Gf44KB44CB44Ot44Kw44Kk44Oz5b6M44GZ44GQ44Gr5oOF5aCx44KS5pu05paw44GX44Gm44GP
44Gg44GV44GE44CCDQrjgYLjgarjgZ/jgYwyNOaZgumWk+S7peWGheOBq+eiuuiqjeOBp+OBjeOB
quOBhOWgtOWQiOOBr+eUs+OBl+ios+OBguOCiuOBvuOBm+OCk+OAguOBguOBquOBn+OBruiyoeeU
o+OBruWuieWFqOOBruOBn+OCgeOBq+OAgeOBk+OBruOCouOCq+OCpuODs+ODiOOBruS9v+eUqOOC
kuWItumZkOOBl+OBvuOBmeOAguOBguOCieOBi+OBmOOCgeOBlOeQhuino+OBj+OBoOOBleOBhOOA
gg0KDQoNCg0K44OH44OQ44Kk44K5OiBNb3ppbGxhLzUuMCAoTGludXg7IEFuZHJvaWQgOTsgQU5F
LUxYMkogQnVpbGQvSFVBV0VJQU5FLUxYMko7IHd2KSBBcHBsZVdlYktpdC81MzcuMzYgKEtIVE1M
LCBsaWtlIEdlY2tvKSBWZXJzaW9uLzQuMCBDaHJvbWUvODMuMC40MTAzLjEwNiBNb2JpbGUgDQpJ
UOOCouODieODrOOCuTogMTA5LjI1Mi44NC4xNzAgDQrloLTmiYDvvJrjg63jgrfjgqIs44Oi44K5
44Kv44OvDQoNCg0KDQoNCuWVj+mhjOOCkuino+axuuOBmeOCi+OBn+OCgeOBq+S4i+iomOOCiOOC
iuiHs+aApeODkeOCueODr+ODvOODieOBruWkieabtOOBqOeZu+mMsuaDheWgseOBruabtOaWsOOC
kuihjOOBo+OBpuOBj+OBoOOBleOBhOOAguacrOS7tuOBq+OBpOOBhOOBpuOBlOi/t+aDkeOCkuOB
iuOBi+OBkeOBl+OBvuOBl+OBn+OBk+OBqOOCkuOBiuipq+OBs+eUs+OBl+S4iuOBkuOBvuOBmeOA
guS9leWNkuOAgeOCiOOCjeOBl+OBj+OBiumhmOOBhOeUs+OBl+S4iuOBkuOBvuOBmeOAgg0KDQoN
Cg0KDQrjgqLjgqvjgqbjg7Pjg4jmg4XloLHjgpLmm7TmlrDjgZnjgosNCg0KDQoNCg0K44GK55+l
44KJ44GbOg0K44OR44K544Ov44O844OJ44Gv6Kqw44Gr44KC5pWZ44GI44Gq44GE44Gn44GP44Gg
44GV44GE44CCIA0K5YCL5Lq65oOF5aCx44Go6Zai5L+C44GM44Gq44GP44CB5o6o5ris44GX44Gr
44GP44GE44OR44K544Ov44O844OJ44KS5L2c5oiQ44GX44Gm44GP44Gg44GV44GE44CCDQrlpKfm
loflrZfjgajlsI/mloflrZfjgIHmlbDlrZfjgIHjgYrjgojjgbPoqJjlj7fjgpLlv4XjgZrkvb/n
lKjjgZfjgabjgY/jgaDjgZXjgYTjgIIgDQrjgqrjg7Pjg6njgqTjg7PjgqLjgqvjgqbjg7Pjg4jj
gZTjgajjgavjgIHnlbDjgarjgovjg5Hjgrnjg6/jg7zjg4njgpLkvb/nlKjjgZfjgabjgY/jgaDj
gZXjgYTjgIINCg0KDQoNCg0KDQoNCg0K55m66KGM77ya44Ki44Oe44K+44Oz44K444Oj44OR44Oz
5ZCI5ZCM5Lya56S+IA0K5L2P5omA77ya5p2x5Lqs6YO955uu6buS5Yy65LiL55uu6buSMS04LTEN
Cg0KDQoNCkFtYXpvbiwgQW1hem9uLmNvLmpwLCDjgqLjg57jgr7jg7PjgIEgQW1hem9uIFNlcnZp
Y2VzLCBBbWF6b27lh7rlk4HjgrXjg7zjg5PjgrnjgIHjgZ3jga7ku5ZBbWF6b27jga7jgrXjg7zj
g5Pjgrnjgavkv4LjgovlkI3np7Djg7vjg63jgrTjga/jgIFBbWF6b24uY29tLCBJbmMu44G+44Gf
44Gv44Gd44Gu6Zai6YCj5Lya56S+44Gu5ZWG5qiZ44Gn44GZ44CCCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlz
dApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
