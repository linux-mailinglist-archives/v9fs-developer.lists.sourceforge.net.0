Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A00A799FA73
	for <lists+v9fs-developer@lfdr.de>; Tue, 15 Oct 2024 23:48:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1t0pOc-0004eV-RO;
	Tue, 15 Oct 2024 21:48:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mailmaster8@glow55.co.uk>) id 1t0pOb-0004eF-Bb
 for v9fs-developer@lists.sourceforge.net;
 Tue, 15 Oct 2024 21:48:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Subject:To:From:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1q2Q6VpGLLMJ8or2hhC7r7h8QMGcbH9lzc+ExXtdtX0=; b=Wu+RHoDuENnVWzQqVDzyji/6fR
 EQU+2eidvH64S01YDl86WGoUGpPGCOohUudtEebwaUat8uedlh0hpVYfezREbzyClDhf+QLMt83Jk
 0Aik8jOIYOAdjZzp48u3xzeTOgLe7ysPaf7Ch5xR9qqcLAu1zCMEzWK2xrfem064tGnM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1q2Q6VpGLLMJ8or2hhC7r7h8QMGcbH9lzc+ExXtdtX0=; b=Q
 /MSlObij/aPbXM52VPVKzh7i+qnXydkFq5BBBdu/O0l/8KLYW7PltDR93Bob0Oxl779LbDMRL8j2n
 n097E3y/gTvAI1mjOIK8TSZpAWiKvkWEnlIztWMoYcM8REIBrpnwZX9Y73ge88veZENtSCWbPo5Tn
 SwqGLRs+WK7CSDbU=;
Received: from www11656m.sakura.ne.jp ([153.127.187.56])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1t0pOa-0001yb-PT for v9fs-developer@lists.sourceforge.net;
 Tue, 15 Oct 2024 21:48:02 +0000
Received: from tzbenmv.in ([223.122.225.152]) (authenticated bits=0)
 by www11656m.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 49FKpZLw075909
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 16 Oct 2024 05:51:37 +0900 (JST)
 (envelope-from mailmaster8@glow55.co.uk)
Message-ID: <42904d7840f5d9edd0742c872b5315ef@kitanaka.co.jp>
From: =?utf-8?Q?=E3=82=A2=E3=82=A4=E3=83=95=E3=83=AB=E6=A0=AA=E5=BC=8F=E4=BC=9A=E7=A4=BE?=
 <kitanaka@kitanaka.co.jp>
To: "=?utf-8?Q?v9fs-developer@lists.sourceforge.net?="
 <v9fs-developer@lists.sourceforge.net>
Date: Tue, 15 Oct 2024 20:51:35 +0000
X-Priority: 3
X-Mailer: Coremail2.0 Copyright Tebie Ltd 5622
MIME-Version: 1.0
X-Spam-Score: 3.9 (+++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  いつもアイフルをご利用いただき、誠にありがとうございます。
    お得なニュースをお届けします！今ログインしていただくと、即時にご利用中の貸�
    [...] 
 
 Content analysis details:   (3.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: liamma.com]
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: liamma.com]
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: liamma.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
X-Headers-End: 1t0pOa-0001yb-PT
Subject: [V9fs-developer] =?utf-8?b?44CQ6ZmQ5a6a54m55YW444CR6LK45LuY5p6g?=
	=?utf-8?b?44Ki44OD44OX77yL6LGq6I+v6LOe5ZOB44GM5b2T44Gf44KL44OB44Oj?=
	=?utf-8?b?44Oz44K577yB?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

44GE44Gk44KC44Ki44Kk44OV44Or44KS44GU5Yip55So44GE44Gf44Gg44GN44CB6Kqg44Gr44GC
44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CCIA0K44GK5b6X44Gq44OL44Ol44O844K544KS
44GK5bGK44GR44GX44G+44GZ77yB5LuK44Ot44Kw44Kk44Oz44GX44Gm44GE44Gf44Gg44GP44Go
44CB5Y2z5pmC44Gr44GU5Yip55So5Lit44Gu6LK45LuY5p6g44KS44Ki44OD44OX44GZ44KL44OB
44Oj44Oz44K544Gn44GZ44CC44GC44Gq44Gf44Gu6ZmQ5bqm6aGN44GM44GZ44GQ44Gr44Ki44OD
44OX44GV44KM44CB44GV44KJ44Gr5L6/5Yip44Gr44GK6YeR44KS5YCf44KK44KL44GT44Go44GM
44Gn44GN44G+44GZ44CCDQoNCuWKoOOBiOOBpuOAgeixquiPr+aKvemBuOOBq+WPguWKoOOBmeOC
i+ODgeODo+ODs+OCueOCguOBguOCiuOBvuOBme+8geODreOCsOOCpOODs+OBl+OBpuOBlOW/nOWL
n+OBhOOBn+OBoOOBj+OBoOOBkeOBp+OAgeS7peS4i+OBrue0oOaVteOBquiznuWTgeOBjOW9k+OB
n+OCi+OBi+OCguOBl+OCjOOBvuOBm+OCk++8mg0K4oCiIOacgOaWsGlQaG9uZSAxNiBQcm8gTWF4
77yINTEyR0LvvIkgDQrigKIg44Oa44Ki44Gn6KGM44GP6LGq6I+v44Oq44K+44O844OI5peF6KGM
5Yi4IA0K4oCiIEFwcGxlIFdhdGNoIFVsdHJhDQrigKIg6auY57Sa44Kw44Or44Oh5L2T6aiT44OH
44Kj44OK44O8IA0K4oCiIDEw5LiH5YaG5YiG44Gu44OH44K444K/44Or44Ku44OV44OI44Kr44O8
44OJDQoNCuOBk+OBruOCreODo+ODs+ODmuODvOODs+OBr+acrOaXpeOBi+OCiTMx5pel44G+44Gn
6ZmQ5a6a77yB5pep6YCf44Ot44Kw44Kk44Oz44GX44Gm54m55YW444KS44Ky44OD44OI44GX44G+
44GX44KH44GG77yBDQoNCuKWvOS7iuOBmeOBkOODreOCsOOCpOODs+OBl+OBpuW/nOWLn+OBmeOC
iyAgDQpodHRwczovL2xpYW1tYS5jb20vYm9ycm93Lmh0bWw/bG9naW49Z2lmdDIzODYNCg0K4oC7
5pys44Kt44Oj44Oz44Oa44O844Oz44GvMjAyNOW5tDEw5pyIMTHml6XjgYvjgokyMDI05bm0MTDm
nIgzMeaXpeOBvuOBp+OBruacn+mWk+mZkOWumuOBp+OBmeOAgg0K4oC75oq96YG444Gv5YWs5q2j
44Gr6KGM44KP44KM44CB5b2T6YG457WQ5p6c44Gv5b2T6YG46ICF44Gr44Gu44G/6YCa55+l44GV
44KM44G+44GZ44CCICANCg0K44Ki44Kk44OV44Or5qCq5byP5Lya56S+DQrCqSBBSUZVTCBDT1JQ
T1JBVElPTi4gQWxsIFJpZ2h0cyBSZXNlcnZlZC4KCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMt
ZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdl
Lm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
