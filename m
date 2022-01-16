Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1127948FE85
	for <lists+v9fs-developer@lfdr.de>; Sun, 16 Jan 2022 19:52:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n9Ade-0004I1-BS; Sun, 16 Jan 2022 18:52:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <support-amazon.jp@ceugriw.cn>) id 1n9Add-0004Hu-A6
 for v9fs-developer@lists.sourceforge.net; Sun, 16 Jan 2022 18:52:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tcx7KWaL1jXNIlJR1Ng7d/UWoxJE4OF0SmYV00MbswY=; b=j+0dNLWDzH5cL0AstH+F3pHujM
 tvbFrrP9gx7XJVdbNqDi/fspOjmIkKH7v4xgX8BFM+U36wkRIGOg24ztLdPpuCScmVGNepgzx5zU7
 nf2mKQyYu9zvik14lGtzCaP7gkTRVdiNqnI0DUUK4L52ML8vZaqwTBiAC1k9lWHpkGcc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tcx7KWaL1jXNIlJR1Ng7d/UWoxJE4OF0SmYV00MbswY=; b=V
 NsjLrQzD6dhkaK5D3yRTvLfF9hiFAaKltV2M64f9IESAt/UmXU9JZC5Cax1bXfnJK0Hxv2tFbPTMi
 dgedAmHnNMkEUDMcwUtl0qEl+TnRbnU56HT9ZmHNmK0Lb5ziumNgK6k27YdyZEjpOydJxaFFy6DPu
 esrpgAIYqfcH/qps=;
Received: from [107.150.97.27] (helo=mail.ceugriw.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n9Ada-0002gj-Sv
 for v9fs-developer@lists.sourceforge.net; Sun, 16 Jan 2022 18:52:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=ceugriw.cn; 
 h=Date:From:To:Subject:Message-ID:Mime-Version:Content-Type;
 i=support-amazon.jp@ceugriw.cn;
 bh=tcx7KWaL1jXNIlJR1Ng7d/UWoxJE4OF0SmYV00MbswY=;
 b=PasZIYmvxRheBL4fGS7AmXlLBHTOYdZcMLvAL9MrU5qaDERn+XMHQ3QPdX23byfettqZ4fIRMJ46
 hVXf0oyBo7T9gL9atP5lvW4ndvNMqsMyFnq8uzq7Yhu3ZEQqhyHNB7rVJWax1Jh+CVZoh667xDGf
 dDbuDWmT8fhfhiWfAW0=
Date: Mon, 17 Jan 2022 02:54:02 +0800
From: "Amazon" <support-amazon.jp@ceugriw.cn>
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <20220117025412174155@ceugriw.cn>
Mime-Version: 1.0
X-Spam-Score: 4.7 (++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Amazonお客様 平素は Amazon.co.jp をご利用いただき、誠にありがとうございます。
    ご利用の Amazon アカウントで異常な活動が検出されたため、アカウン�
    [...] 
 
 Content analysis details:   (4.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [107.150.97.27 listed in zen.spamhaus.org]
  0.1 URIBL_CSS_A            Contains URL's A record listed in the Spamhaus CSS
                             blocklist
                             [URIs: ceugriw.cn]
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
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1n9Ada-0002gj-Sv
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?W0FtYXpvbl3jgZTliKnnlKjjga7norroqo0=?=
	=?utf-8?b?44GK6aGY44GE6Ie044GX44G+44GZ?=
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

DQogDQoNCg0KDQpBbWF6b27jgYrlrqLmp5gNCuW5s+e0oOOBryBBbWF6b24uY28uanAg44KS44GU
5Yip55So44GE44Gf44Gg44GN44CB6Kqg44Gr44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ
44CCDQrjgZTliKnnlKjjga4gQW1hem9uIOOCouOCq+OCpuODs+ODiOOBp+eVsOW4uOOBqua0u+WL
leOBjOaknOWHuuOBleOCjOOBn+OBn+OCgeOAgeOCouOCq+OCpuODs+ODiOOCkuS4gOaZguS/neeV
meOBq+OBl+OAgeS/neeVmeS4reOBruOBlOazqOaWh+OChOOCteODluOCueOCr+ODquODl+OCt+OD
p+ODs+OCkuOCreODo+ODs+OCu+ODq+OBhOOBn+OBl+OBvuOBl+OBn+OAgg0K44Kv44Os44K444OD
44OI44Kr44O844OJ44Gu55uX6Zuj44KS6Ziy44GQ44Gf44KB44CB44Ot44Kw44Kk44Oz5b6M44GZ
44GQ44Gr5oOF5aCx44KS5pu05paw44GX44Gm44GP44Gg44GV44GE44CCDQrjgZTlm57nrZTjgpLj
gYTjgZ/jgaDjgZHjgarjgYTloLTlkIjjgIFBbWF6b27jga7jgZTliKnnlKjliLbpmZDjgYzntpnn
tprjgZXjgozjgovjgZPjgajjgoLjgZTjgZbjgYTjgb7jgZnjga7jgafjgIHkuojjgoHjgZTkuobm
ib/jgY/jgaDjgZXjgYTjgIINCuacrOS7tuOBq+OBpOOBhOOBpuOBlOi/t+aDkeOCkuOBiuOBi+OB
keOBl+OBvuOBl+OBn+OBk+OBqOOCkuOBiuipq+OBs+eUs+OBl+S4iuOBkuOBvuOBmeOAgg0K5L2V
5Y2S44CB44KI44KN44GX44GP44GK6aGY44GE55Sz44GX5LiK44GS44G+44GZ44CCDQoNCg0KDQro
qbPjgZfjgY/jga/jgZPjgaHjgokNCg0KDQoNCg0KDQpBbWF6b24g44OB44O844OgIA0KDQoNCg0K
DQrCqSAxOTk2LTIwMjIsIEFtYXpvbi4gSW5jLiBvciBpdHMgYWZmaWxpYXRlcw0KDQoNCi4gCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxv
cGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0
cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
