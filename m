Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA10095AC99
	for <lists+v9fs-developer@lfdr.de>; Thu, 22 Aug 2024 06:30:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1sgzSo-0001h5-9h;
	Thu, 22 Aug 2024 04:30:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mufg@dfi208.com>) id 1sgzSi-0001gX-Gc
 for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Aug 2024 04:30:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Message-ID:Mime-Version:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KoMAlTlrMpcOFIw8giH37e8RMRy0C3DQRH0nE0VVHZs=; b=eOy9/I85hE83f+qlyY8iIGpRO8
 0JdyF7225DN/rVuEQjtJU8cX/5THA0Kte32p9+5QpsQz7nqWU9cFNYVEclcdyQrCCfHAAVRi0CDEP
 /6jCVCpGoDJGg/Q5Ragj2uH2MjjbCK520PB2dxoBW7BVUe/Gj7HtRR2/njxPxuX58Fto=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Message-ID:Mime-Version:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=KoMAlTlrMpcOFIw8giH37e8RMRy0C3DQRH0nE0VVHZs=; b=d
 f6MBwxz4mJr17z97SapQC+qQClxCRE/IIJK9DwtEXMGLmGDL/Cy0TU3EIJCzUoczcB5+14kMvT66V
 pENiBau2wXgHRRlLvwiO22axUSoJ2iTAltOjN2UjD9EgIpcQGjr47kWQVJhGuqBeYMg/WuEAVI/h/
 JCgrRCWPFFe7pgU0=;
Received: from mail4.dfi208.com ([104.168.46.165])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sgzSg-0000Yj-Ge for v9fs-developer@lists.sourceforge.net;
 Thu, 22 Aug 2024 04:30:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=dfi208.com; 
 h=Date:From:To:Subject:Mime-Version:Message-ID:Content-Type;
 i=mufg@dfi208.com; 
 bh=KoMAlTlrMpcOFIw8giH37e8RMRy0C3DQRH0nE0VVHZs=;
 b=uwR2ZqlulF1xgEVg1BGzfwekICgfe6UZzrCO/obIOarQzvDOqKkoWtPRPgCWCWwySItYTzjEvkg+
 41Xj5qBZC2xPLnlHUQwbzby1xU8vnNMfkIPRshwynvAyLO/5qzqZ5lsNb7jMzqcLpBlUprfjeZvg
 jmYR8cgCA8gt1R1JKJM=
Date: Thu, 22 Aug 2024 13:09:54 +0900
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
X-Has-Attach: no
Mime-Version: 1.0
Message-ID: <202408221310025137847@dfi208.com>
X-Spam-Score: 1.7 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  メールが正しく表示されない方はこちらをご覧ください。
    DCカード 会員サイト いつもDCカードをご利用いただきありがとうございます。
    
 
 Content analysis details:   (1.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: mufg.jp]
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: smsaziende.com]
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: smsaziende.com]
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [104.168.46.165 listed in sa-accredit.habeas.com]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                            [104.168.46.165 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
                             DNSWL was blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [104.168.46.165 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sgzSg-0000Yj-Ge
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?W0RD44Kr44O844OJXeOBlOWIqeeUqOeiug==?=
 =?utf-8?b?6KqN44Gu44GK6aGY44GE?=
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
From: =?UTF-8?B?REPjgqvjg7zjg4k=?= via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: =?UTF-8?B?REPjgqvjg7zjg4k=?= <mufg@dfi208.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQrjg6Hjg7zjg6vjgYzmraPjgZfjgY/ooajnpLrjgZXjgozjgarjgYTmlrnjga/jgZPjgaHjgonj
gpLjgZTopqfjgY/jgaDjgZXjgYTjgIIgDQogDQpEQ+OCq+ODvOODiSDkvJrlk6HjgrXjgqTjg4gN
Cg0K44GE44Gk44KCREPjgqvjg7zjg4njgpLjgZTliKnnlKjjgYTjgZ/jgaDjgY3jgYLjgorjgYzj
gajjgYbjgZTjgZbjgYTjgb7jgZnjgIINCg0K44GC44Gq44Gf44Gu44Ki44Kr44Km44Oz44OI5YaF
44Gn55Ww5bi444Gq5Y+W5byV44GM44K344K544OG44Og44Gr44KI44KK5qSc5Ye644GV44KM44CB
44Ki44Kr44Km44Oz44OI5YaF44Gu6LOH6YeR44Gu5a6J5YWo44KS56K65L+d44GZ44KL44Gf44KB
44Gr44CB44Kr44O844OJ44Gu5L2/55So44Gr44GE44GP44Gk44GL44Gu5Yi26ZmQ44KS6Kit44GR
44Gm44GE44G+44GZ44CCIA0KICA3MjkwMDYgDQrmnKzkurroqo3oqLzjga/ku6XkuIvjga5VUkzj
g6rjg7Pjgq/jgpLjgq/jg6rjg4Pjgq/jgZfjgabjgY/jgaDjgZXjgYTjgIIgDQoNCuacrOS6uuS9
v+eUqOOBl+OBpuOBhOOCi+OBk+OBqOOCkueiuuiqjeOBl+OBn+S4iuOBp+OAgeOCouOCq+OCpuOD
s+ODiOOBruS9v+eUqOWItumZkOOCkuino+mZpOOBleOBm+OBpuOBhOOBn+OBoOOBjeOBvuOBmeOA
gg0KICBiZGhsZGprICANCuKWtuacrOS6uuiqjeiovOOCteODvOODk+OCuQ0KICBPTU9CTU0gIA0K
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0NCuKAu+acrOODoeODvOODq+OBrumAgeS/oeOCouODieODrOOCueOBr+mAgeS/oeWw
gueUqOOBqOOBquOBo+OBpuOBiuOCiuOBvuOBmeOAgiANCui/lOS/oeODoeODvOODq+OBp+OBruOB
iuWVj+OBhOWQiOOCj+OBm+OBr+aJv+OCiuOBi+OBreOBvuOBmeOBruOBp+OAgeOBguOCieOBi+OB
mOOCgeOBlOS6huaJv+mhmOOBhOOBvuOBmeOAgg0KICBSZ2FzZWRnZiAgDQotLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0K4pag
55m66KGM6ICF4pagIA0KDQrkuInoj7FVRkrjg4vjgrPjgrnmoKrlvI/kvJrnpL4gDQogIHpMaFNt
ICANCsKpIE1VRkcgQmFuaywgTHRkLiBBbGwgcmlnaHRzIHJlc2VydmVkLiANCuioseWPr+OBquOB
j+i7oui8ieOBmeOCi+OBk+OBqOOCkuemgeOBmOOBvuOBmeOAgiANCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxp
c3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291
cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
