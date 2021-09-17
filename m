Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB5E40FF6E
	for <lists+v9fs-developer@lfdr.de>; Fri, 17 Sep 2021 20:32:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mRIfH-0000TZ-2b; Fri, 17 Sep 2021 18:32:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <amozon-update-account@desctrl.com>)
 id 1mRIao-0000PC-3h
 for v9fs-developer@lists.sourceforge.net; Fri, 17 Sep 2021 18:28:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oUHb7Lelp/RZhR9cIwKZVx8bh68+DzMb2vxjqoZuo0Q=; b=ZYnacw1iwCoh2db4buir8QJ0ba
 3bXsi/nQcQ5rN+0WuHr0NJYgXNmVvJNn2rP79NgpJ/fOjlQ0NLtFysq7XP1yxAobAzdgisFlQnkau
 N+/4PUy5MLg074krtvQcnzJ0YX3C2NkiTuXeTmZXGtH+MacZNSGu+3x3YZm/5dPFiws4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oUHb7Lelp/RZhR9cIwKZVx8bh68+DzMb2vxjqoZuo0Q=; b=F
 ZmyBh15Za6mGq1FlPMS6pTWomgr4CyvWs5L94HnUNFZrIHrc/8OjYj3P84Z379r1IHa93UPOnKw+M
 XGR6rpvOOLrv/iWpfzb+QradId93EEeEJmLssLa1xppurfPnd59ZXY0NLvyXS4HEVdg8dL0VHj4A8
 sfuyUObFOfwFZoKo=;
Received: from desctrl.com ([107.189.14.13])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mRIan-00E5P4-5f
 for v9fs-developer@lists.sourceforge.net; Fri, 17 Sep 2021 18:28:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=defult; d=desctrl.com; 
 h=Date:From:To:Subject:Message-ID:Mime-Version:Content-Type;
 i=amozon-update-account@desctrl.com;
 bh=oUHb7Lelp/RZhR9cIwKZVx8bh68+DzMb2vxjqoZuo0Q=;
 b=UHm16JJ1Ldgz7M3hTq/uiKQF8wtdCvrG4+SlIJNvxAGnjvt2cka/UKWHq2FE+9WKc6XhWlDFiF9W
 Pmn3G6NS4dPVYiffHb4yR9n7bWa2RKNtlYOzzzBW2r8UalfzlHtg/IWC5vyEwz5xOXH9jmFH/XVf
 9v/USaOwdzYs8Qxdj28=
Date: Sat, 18 Sep 2021 02:27:46 +0800
From: "Aamzon.co.jp" <amozon-update-account@desctrl.com>
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <20210918022758838358@desctrl.com>
Mime-Version: 1.0
X-Helo-Check: bad, Forged Random Domain (desctrl.com)
X-Spam-Score: 1.7 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Amazonお客様 誰かがあなたのクレジットカードにログインして商品を購入しようとしていることに気がつきましょう。
    クレジットカードの盗難を防ぎ [...] 
 
 Content analysis details:   (1.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: aikam.com.cn]
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: aikam.com.cn]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1mRIan-00E5P4-5f
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

DQpBbWF6b27jgYrlrqLmp5gNCuiqsOOBi+OBjOOBguOBquOBn+OBruOCr+ODrOOCuOODg+ODiOOC
q+ODvOODieOBq+ODreOCsOOCpOODs+OBl+OBpuWVhuWTgeOCkuizvOWFpeOBl+OCiOOBhuOBqOOB
l+OBpuOBhOOCi+OBk+OBqOOBq+awl+OBjOOBpOOBjeOBvuOBl+OCh+OBhuOAgg0K44Kv44Os44K4
44OD44OI44Kr44O844OJ44Gu55uX6Zuj44KS6Ziy44GO44CB55m76Yyy44GX44Gf44KJ44Gn44GN
44KL44Gg44GR5pep44GP5oOF5aCx5Yem55CG44KS5pu05paw44GZ44KL44CCDQrjgYLjgarjgZ/j
gYwyNOaZgumWk+S7peWGheOBq+eiuuiqjeOBp+OBjeOBquOBhOWgtOWQiOOBr+eUs+OBl+ios+OB
guOCiuOBvuOBm+OCk+OAguiyoeeUo+OBruaQjeWkseOBq+WvvuOBl+OBpuOBrw0K44GT44Gu44Ki
44Kr44Km44Oz44OI44Gu5L2/55So44KS5Yi26ZmQ44GV44Gb44Gm44GE44Gf44Gg44GN44G+44GZ
44CC44GC44KJ44GL44GY44KB44GU55CG6Kej44GP44Gg44GV44GE44CCDQoNCueiuuiqjeeUqOOC
ouOCq+OCpuODs+ODiA0KDQoNCiAgDQogICAgICAgICDliKnnlKjopo/ntIQgIOODl+ODqeOCpOOD
kOOCt+ODvOimj+e0hCAg44OY44Or44OXIMKpIDE5OTYtMjAyMSwgQW1hem9uLiBJbmMuIG9yIGl0
cyBhZmZpbGlhdGVzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8v
djlmcy1kZXZlbG9wZXIK
