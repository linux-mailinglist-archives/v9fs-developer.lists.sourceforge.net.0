Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 605194CCEEC
	for <lists+v9fs-developer@lfdr.de>; Fri,  4 Mar 2022 08:15:22 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nQ29p-0004eB-Ic; Fri, 04 Mar 2022 07:15:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <eki-net@invwnwhj.cn>) id 1nQ29n-0004e4-EI
 for v9fs-developer@lists.sourceforge.net; Fri, 04 Mar 2022 07:15:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GF2L5uZa/SAAnFyFfVjVwa4B+LVkICVzucVAgWbB7Do=; b=FzbaSk44TNUN6qnToR0XRpKooU
 on+Dt6h9Jca7iy7iQ/fwc5g3lZ0HoGHQy3j8jaY7lc2C2kMg1Lc9TH7b6PjJtd5JwHysmPT6k00fG
 Y6soaHCPvhvwUkhNIRJXsFB+JLNiBc0m+85Mc0wWtFRbgZrywSt3u/6r4WKdiANPzqTA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GF2L5uZa/SAAnFyFfVjVwa4B+LVkICVzucVAgWbB7Do=; b=P
 /hHdX2oQuLTZL9wjjRe2uMJqn30mTqG0ltuS7tix0VisdJFSKXjiGozupowBQkoF/MPhXwEx4dBaO
 ONbDTMQx4UvhUf6p0MwDnBKvr1OMLXNTzAZSaRQd+jmschdGmWsYXdQNIhEhT13AoItXk6rxyVp+k
 rxTRTIzE6sWSnCS4=;
Received: from [134.122.152.236] (helo=invwnwhj.cn)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nQ29f-00041O-7S
 for v9fs-developer@lists.sourceforge.net; Fri, 04 Mar 2022 07:15:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=defult; d=invwnwhj.cn; 
 h=Message-ID:From:To:Subject:Date:MIME-Version:Content-Type;
 i=eki-net@invwnwhj.cn;
 bh=GF2L5uZa/SAAnFyFfVjVwa4B+LVkICVzucVAgWbB7Do=;
 b=iDDeW10F+uPjshIAX8S61ikcAYnkCn/88iCwbk6iED++QS33DH9pI1ShmS5TDW1WCKnv/WmJiMPv
 ogbzF+ZXZgL+D7BAxRiZtFJC2aEHLT1L97tYuvpTJGb1Hem10aPJ9zZ6gjEviTrjbz2YmiPGpqaq
 f8emcM2rqyXmEBNNi7c=
Message-ID: <0DC8E0DD81BD4FE449D47283B60311AE@ufujgwc>
From: eki-net.com <eki-net@invwnwhj.cn>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Fri, 4 Mar 2022 14:54:48 +0800
MIME-Version: 1.0
X-Helo-Check: bad, Forged Random Domain (invwnwhj.cn)
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  日頃より「えきねっと」をご利用いただきありがとうございます。
    「えきねっと」は 2022 年 2月 06 日(日)にサービスをリニューアルいたしました。これ
    に伴い、「えきねっと」利用規約・会員規約を変更し、最後に�
    [...] 
 
 Content analysis details:   (1.1 points, 6.0 required)
 
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
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1nQ29f-00041O-7S
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQ6YeN6KaB44CR44GI44GN44Gt44Gj44Go?=
	=?utf-8?b?44Ki44Kr44Km44Oz44OI44Gu6Ieq5YuV6YCA5Lya5Yem55CG44Gr44Gk?=
	=?utf-8?b?44GE44Gm?=
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

DQoNCg0KDQoNCg0KDQrml6XpoIPjgojjgorjgIzjgYjjgY3jga3jgaPjgajjgI3jgpLjgZTliKnn
lKjjgYTjgZ/jgaDjgY3jgYLjgorjgYzjgajjgYbjgZTjgZbjgYTjgb7jgZnjgIINCg0K44CM44GI
44GN44Gt44Gj44Go44CN44GvIDIwMjIg5bm0IDLmnIggMDYg5pelKOaXpSnjgavjgrXjg7zjg5Pj
grnjgpLjg6rjg4vjg6Xjg7zjgqLjg6vjgYTjgZ/jgZfjgb7jgZfjgZ/jgILjgZPjgowg44Gr5Ly0
44GE44CB44CM44GI44GN44Gt44Gj44Go44CN5Yip55So6KaP57SE44O75Lya5ZOh6KaP57SE44KS
5aSJ5pu044GX44CB5pyA5b6M44Gr44Ot44Kw44Kk44Oz44KS44GX44Gf5pel44KI44KK6LW3566X
44GXIOOBpu+8kuW5tOS7peS4iuOAjOOBiOOBjeOBreOBo+OBqOOAjeOBruOBlOWIqeeUqO+8iOOD
reOCsOOCpOODs++8ieOBjOeiuuiqjeOBp+OBjeOBquOBhOOAjOOBiOOBjeOBreOBo+OBqOOAjeOC
ouOCq+OCpuODs+ODiCDjga/jgIHoh6rli5XnmoTjgavpgIDkvJrlh6bnkIbjgZXjgZvjgabjgYTj
gZ/jgaDjgY/jgZPjgajjgajjgYTjgZ/jgZfjgb7jgZfjgZ/jgILjgarjgYrjgIHlr77osaHjgqLj
gqvjgqbjg7Pjg4jjga7oh6rli5XpgIDkvJrlh6bnkIbjgpLjgIHmnKzopo/ntITjgavln7rjgaXj
gY3jgIEyMDIyIOW5tCAyIOaciCAyMCDml6Uo5pyIKeOCiOOCiumghuasoeOAgeWun+aWveOBleOB
m+OBpuOBhOOBn+OBoOOBjeOBvuOBmeOAgg0KDQrvvJLlubTku6XkuIrjg63jgrDjgqTjg7PjgZfj
gabjgYTjgarjgYTjgYrlrqLjgZXjgb7jgafjgIHku4rlvozjgoLjgIzjgYjjgY3jga3jgaPjgajj
gI3jgpLjgZTliKnnlKjjgYTjgZ/jgaDjgZHjgovloLTlkIgg44Gv44CBMjAyMiDlubQgMyDmnIgg
NiDml6Uo5pyIKeOCiOOCiuOCguWJjeOBq+OAgeS4gOW6puODreOCsOOCpOODs+aTjeS9nOOCkuOB
iumhmOOBhOOBhOOBn+OBl+OBvuOBmeOAgg0KDQrih5Ljg63jgrDjgqTjg7Pjga/jgZPjgaHjgokN
Cg0K4oC744GI44GN44Gt44Gj44Go44OI44OD44OX44Oa44O844K45Y+z5LiK44Gu44Ot44Kw44Kk
44Oz44Oc44K/44Oz44KI44KK44Ot44Kw44Kk44Oz44GX44Gm44GP44Gg44GV44GE44CCDQoNCiDj
gYrllY/jgYTlkIjjgo/jgZvlhYgNCiDjgYjjgY3jga3jgaPjgajjgrXjg53jg7zjg4jjgrvjg7Pj
gr/jg7wNCiBURUwgMDUwLTIwMTYtNTAwMA0KIOWPl+S7mOaZgumWkyA45pmCMDDliIbvvZ4yMuaZ
gjAw5YiGDQog44K144Kk44OI6YGL5Za244O7566h55CGDQogSlLmnbHml6XmnKzjg43jg4Pjg4jj
grnjg4bjg7zjgrfjg6fjg7MNCi0tLS0tLS0tLS0tLS0tLS0tLS0tDQoNCuOBquOBiuOAgeOCouOC
q+OCpuODs+ODiOOBjOmAgOS8muWHpueQhuOBleOCjOOBn+WgtOWQiOOCguOAgeaWsOOBn+OBq+OC
ouOCq+OCpuODs+ODiOeZu+mMsu+8iOeEoeaWmeeZu+mMsu+8ieOBl+OBpuOBhOOBnyDjgaDjgY/j
gZPjgajjgafjgZnjgZDjgavjgIzjgYjjgY3jga3jgaPjgajjgI3jgpLjgZTliKnnlKjjgYTjgZ/j
gaDjgY/jgZPjgajjgYzjgafjgY3jgb7jgZnjga7jgafjgIHku4rlvozjgoLjgZTmhJvpoafjgYTj
gZ8g44Gg44GR44G+44GZ44KI44GG44KI44KN44GX44GP44GK6aGY44GE44GE44Gf44GX44G+44GZ
44CCDQoNCg0KDQoNCg0KDQogQ29weXJpZ2h0IMKpIEpSIEVhc3QgTmV0IFN0YXRpb24gQ28uLEx0
ZC4gQWxsIFJpZ2h0cyBSZXNlcnZlZC4NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9w
ZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
