Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F16F97495F
	for <lists+v9fs-developer@lfdr.de>; Wed, 11 Sep 2024 06:48:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1soFHI-0007FD-Sv;
	Wed, 11 Sep 2024 04:48:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <eki-update@lezwarqmygks.com>) id 1soFHG-0007F4-QG
 for v9fs-developer@lists.sourceforge.net;
 Wed, 11 Sep 2024 04:48:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Message-ID:Mime-Version:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LQT3vcyiRTH5rasZqgwLoVWTNZNuM4dcEB8E4BGCCLE=; b=kboi+3BYkDpfryhhQonwXrXrlU
 KWhZd3hmR1Q4UIRvj5UuQFEGCuf+l5IyE3Afyn1TO8QWQ40lKfWe1XHhVeHYwZC+I6siN2HzV5+8Q
 SEb0dSj6LjpiaJC45bA+rHY4V36WxPBcJSDIm/LY2VdnAEWtFayyt8n96Rq9YJCXPuNc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Message-ID:Mime-Version:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=LQT3vcyiRTH5rasZqgwLoVWTNZNuM4dcEB8E4BGCCLE=; b=S
 QAxfZy+y3mv3Ayy04tkYAQZLdl9Jc6RjOgACzYYCMHnmfNu+/03xbk8csm7lcyKe0OKzDRptHERNn
 7h6dUOEsPD80xMvv7/NfQDkrEz2NTr7m+OK7Op/4+LReQ1MwW7VW1mZodusv9Tv/ZJZmLYRoZ2LdY
 JuGdAkRruyxVd53Q=;
Received: from mail5.lezwarqmygks.com ([107.175.67.26])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1soFHF-0004ik-RW for v9fs-developer@lists.sourceforge.net;
 Wed, 11 Sep 2024 04:48:26 +0000
Date: Wed, 11 Sep 2024 13:48:02 +0900
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
X-Has-Attach: no
Mime-Version: 1.0
Message-ID: <202409111348140706156@lezwarqmygks.com>
X-Spam-Score: 7.7 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ━━━━━━━━━━━━━━━━━━━━━━━━
    会員情報変更および退会に関するお知らせ ━━━━━━━━━━━━━━━━━━2024.9.11━
    � [...] 
 
 Content analysis details:   (7.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [107.175.67.26 listed in zen.spamhaus.org]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: troikatrans.com]
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: troikatrans.com]
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: troikatrans.com]
  0.1 URIBL_SBL_A            Contains URL's A record listed in the Spamhaus SBL
                             blocklist
                             [URIs: www.troikatrans.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 HTTPS_HTTP_MISMATCH    BODY: No description available.
X-Headers-End: 1soFHF-0004ik-RW
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?5Lya5ZOh5oOF5aCx5aSJ5pu044GK44KI44Gz?=
 =?utf-8?b?6YCA5Lya44Gr6Zai44GZ44KL44GK55+l44KJ44Gb?=
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
From: =?UTF-8?B?44GI44GN44Gt44Gj44Go?= via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: =?UTF-8?B?44GI44GN44Gt44Gj44Go?= <member@eki-net.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQrilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHilIHi
lIHilIHilIHilIHilIHilIENCuS8muWToeaDheWgseWkieabtOOBiuOCiOOBs+mAgOS8muOBq+mW
ouOBmeOCi+OBiuefpeOCieOBmw0K4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB4pSB
4pSB4pSB4pSB4pSB4pSB4pSBMjAyNC45LjEx4pSBDQrml6XpoIPjgojjgorjgIzjgYjjgY3jga3j
gaPjgajjgI3jgpLjgZTliKnnlKjjgYTjgZ/jgaDjgY3jgYLjgorjgYzjgajjgYbjgZTjgZbjgYTj
gb7jgZnjgIINCg0KOeaciDPml6Xjgavjgrvjgq3jg6Xjg6rjg4bjgqPjgrfjgrnjg4bjg6DjgpLl
hajpnaLnmoTjgavjg6rjg4vjg6Xjg7zjgqLjg6vjgZfjgb7jgZfjgZ/jgZ/jgoHjgIE35pel5Lul
5LiK44Gr44Ot44Kw44Kk44Oz44GX44Gm44GE44Gq44GE5pa544Gv44CB5LuK5b6M44Gu5Yip55So
44Gr5pSv6Zqc44GM5Ye644Gq44GE44KI44GG44CB44GT44Gu44Oh44O844Or44KS5Y+X5L+h5b6M
44CB5pep5oCl44Gr44Ot44Kw44Kk44Oz44KS44GX44Gm5YCL5Lq65oOF5aCx44KS5pu05paw44GX
44Gm44GP44Gg44GV44CCDQogICANCuOAjuODreOCsOOCpOODs+OBr+OBk+OBoeOCieOAjw0KaHR0
cHM6Ly93d3cuZWtpLW5ldC5jb20vDQogICANCjnmnIgzMOaXpeOBvuOBp+OBq+OBlOiomOWFpeOB
j+OBoOOBleOBhOOAguOBlOiomOWFpeOBjOOBquOBhOWgtOWQiOOBr+OAgemAgOS8muaJi+e2muOB
jeOCkuOBqOOCieOBm+OBpuOBhOOBn+OBoOOBjeOBvuOBmeOAgiANCuOBiuWuouOBleOBvuOBq+OB
r+OBlOS4jeS+v+OCkuOBiuOBi+OBkeOBhOOBn+OBl+OBvuOBmeOBjOOAgeS9leWNkuOBlOeQhuin
o+OCkuiznOOCiuOBvuOBmeOCiOOBhuOBiumhmOOBhOeUs+OBl+S4iuOBkuOBvuOBmeOAgg0KICBT
YmloZTY3eCAgDQrigLvjgZPjga7jg6Hjg7zjg6vjga/jgIzjgYjjgY3jga3jgaPjgajjgI3jgojj
goroh6rli5XphY3kv6HjgZXjgozjgabjgYTjgb7jgZnjgIIgICAgICAgDQrov5Tkv6HjgYTjgZ/j
gaDjgY3jgb7jgZfjgabjgoLlr77lv5zoh7TjgZfjgYvjga3jgb7jgZnjga7jgafjgIHjgYLjgonj
gYvjgZjjgoHjgZTkuobmib/jgY/jgaDjgZXjgYTjgIINCuKAu+acrOODoeODvOODq+OBr+OAgeOA
jOOBiOOBjeOBreOBo+OBqOOAjemHjeimgeOBquOBiuefpeOCieOBm+OBqOOBl+OBpuODoeODvOOD
q+OBrumFjeS/oeOCkuW4jOacm+OBleOCjOOBpuOBhOOBquOBhOOBiuWuouanmOOBq+OCguOBiumA
geOCiuOBleOBm+OBpuOBhOOBn+OBoOOBjeOBvuOBmeOAgg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0NCuOBiOOBjeOBreOBo+OBqOOCteODneODvOODiOOCu+ODs+OCv+OD
vA0K5Y+X5LuY5pmC6ZaT44CAOOaZgjAw5YiG772eMjLmmYIwMOWIhg0K44K144Kk44OI6YGL5Za2
44O7566h55CGDQpKUuadseaXpeacrOODjeODg+ODiOOCueODhuODvOOCt+ODp+ODsw0KLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCiAgIA0K55m66KGM77ya5qCq5byP5Lya
56S+SlLmnbHml6XmnKzjg43jg4Pjg4jjgrnjg4bjg7zjgrfjg6fjg7MNCuOAkjE1MS0wMDUxIOad
seS6rOmDvea4i+iwt+WMuuWNg+mnhOODtuiwtzUtMjctMTEg44Ki44Kw44Oq44K544Kv44Ko44Ki
5paw5a6/NOmajiAgICAgDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
DQogICAgDQpDb3B5cmlnaHQgKGMpIDIwMjQgSlIgRWFzdCBOZXQgU3RhdGlvbiBDby4sIEx0ZC4N
CuioseWPr+OBquOBj+i7oui8ieOBmeOCi+OBk+OBqOOCkuemgeOBmOOBvuOBmeOAgiAgICAgDQoN
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRl
dmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0
Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxv
cGVyCg==
