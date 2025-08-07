Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 351F5B1DFAF
	for <lists+v9fs-developer@lfdr.de>; Fri,  8 Aug 2025 01:05:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Message-ID:From:To:Date:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ibXfuNUHVGPrSP7uwJJi1C4w/ol0amPUYpAg8SrFpr8=; b=LOphYfsh7/vkDucgaPLLqVGG4u
	QWGChTWM1e3dkNYp3s523+Z67q1Ox3bQGtTuP2FnMDnPD9Okzk2Rg70vY3FqNLaFbuT9BQ2TavVDV
	cUj+xIJNDv5Vug819QTNH8eZt95bE/0Eiix5SAi1ka+6XtVRQ3WD7XO1lvsGhfQAGVAg=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1uk9fU-0007Qd-VV;
	Thu, 07 Aug 2025 23:05:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L3194S133745M913@s1.arrobamail.com>)
 id 1uk9fT-0007QX-Gt for v9fs-developer@lists.sourceforge.net;
 Thu, 07 Aug 2025 23:05:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=M6aajxTFG+q8bTzveUG7KsVbN1r3dRPvjQgIiMd1Oto=; b=GocQRJXds0wmulMMJQDfz7rmWh
 ccPtsF70/giZXV1slhDDYT9KMr0yJ2GC0gdQIZWZWx9Uy6Ui8+9x78DnG22FlaqUmXkb+ya4TRzSc
 EgmvK4iRNmega1w6Oa9feKS6twlD9M49tWP8rP5g2Sp6L5Kub66ycxQiPLUzREI2AoR4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=M6aajxTFG+q8bTzveUG7KsVbN1r3dRPvjQgIiMd1Oto=; b=W
 EMMieB3SvhenxaNefs3jN2brBt1l1GixkdI9QFf+PHseMFmRHX141F4jHsQMTypwo58fYUdTN2U5S
 OI0MXlFotub3OQc1xc2pbZ/Nq7bbZhGRcGZBUry+z12CpKfpLv92R9wPbwuCYRAnrA7P2Nidams1t
 optNjwDbHTyQVPFc=;
Received: from p144i156.pf.fmservers.net ([190.105.144.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uk9fS-0002rF-Ie for v9fs-developer@lists.sourceforge.net;
 Thu, 07 Aug 2025 23:05:03 +0000
Date: Thu, 7 Aug 2025 18:04:55 -0500
To: V9fs-developer <v9fs-developer@lists.sourceforge.net>
From: Mariann Rivas <mariann.rivas@consultores-rh.com>
Message-ID: <fo4d9WxZy0703smWBKqCjSdUMSBdiGa7MlKCTBsTs@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtOTEzLTMxOTQtMTMzNzQ1LTI2OS1zMS5hcnJvYmFtYWlsLmNvbQ==
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzkxMzszMTk0OzEzMzc0NTsyNjk=
X-bhid: X-bhd: 913;3194;133745
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 913:3194s133745:124931:WPservicesESP
X-Transport: p144i156
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1754607895; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Thu,=207=20Aug=202025=2018:04:55=20-0500
 |To:V9fs-developer=20<v9fs-developer@lists.sourceforge.net>
 |From:Mariann=20Rivas=20<mariann.rivas@consultores-rh.com>
 |Reply-To:Mariann=20Rivas=20<mariann.rivas@consultores-rh.com>
 |Subject:=3D?utf-8?Q?=3DC2=3DBFSabes_si_est=3DC3=3DA1s_cumpliendo_correcta
 mente_con_la_NOM_035=3D3F?=3D
 |Message-ID:<fo4d9WxZy0703smWBKqCjSdUMSBdiGa7MlKCTBsTs@s1.arrobamail.com>
 |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtOTEzLTMxOTQ
 tMTMzNzQ1LTI2OS1zMS5hcnJvYmFtYWlsLmNvbQ=3D=3D
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzkxMzszMTk0OzEzMz
 c0NTsyNjk=3D
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dwrr
 itysrwptspwrseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:913:3194s133745:124931:WPservicesESP
 |List-ID:<38328:2407410> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_fo4d9WxZy0703smWBK
 qCjSdUMSBdiGa7MlKCTBsTs";
 bh=NDjpowMbwlRONuviXea0Al+6hap6zx1CiUc/qanrL3I=;
 b=hQi3I2lchzMtirIweQNvE513O3HVXYyx3TS9OQQ6fDzz65glVZAl4lQZKY4biExmoxhQ+UBvN
 3058YlY/3n0q5Qm0xw1lmPpJ2vfuK5I51GzZZ3RlekbOoU5Y9bl4DU2aisqIcTHhg4vo5CXMY
 JDmGjGQVhKWmzUSrW7rx2XsUw=
X-Spam-Score: 4.2 (++++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  body { font-family: Arial, sans-serif; font-size: 14px;
 color:
 #333; background-color: #fff; padding: 20px; } a { color: #1a73e8;
 text-decoration: none; } Hola V9fs-developer, 
 Content analysis details:   (4.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 4.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [190.105.144.156 listed in dnsbl-1.uceprotect.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 1.3 HTML_IMAGE_ONLY_24     BODY: HTML: images with 2000-2400 bytes of words
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 LOTS_OF_MONEY          Huge... sums of money
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
 manager
X-Headers-End: 1uk9fS-0002rF-Ie
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?=C2=BFSabes_si_est=C3=A1s_cumpliendo_c?=
 =?utf-8?q?orrectamente_con_la_NOM_035=3F?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Reply-To: Mariann Rivas <mariann.rivas@consultores-rh.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgoKCQoJCglib2R5IHsgZm9udC1mYW1pbHk6IEFyaWFsLCBzYW5zLXNlcmlmOyBmb250LXNpemU6
IDE0cHg7IGNvbG9yOiAjMzMzOyBiYWNrZ3JvdW5kLWNvbG9yOiAjZmZmOyBwYWRkaW5nOiAyMHB4
OyB9CiAgICBhIHsgY29sb3I6ICMxYTczZTg7IHRleHQtZGVjb3JhdGlvbjogbm9uZTsgfQoJCgoK
SG9sYSBWOWZzLWRldmVsb3BlciwKCsK/WWEgZXN0w6FzIGN1bXBsaWVuZG8gY29uIGxhIE5PTSAw
MzU/IE51ZXN0cmEgc29sdWNpw7NuIGRpZ2l0YWwgdGUgYXl1ZGEgYSBldmFsdWFyIHJpZXNnb3Mg
cHNpY29zb2NpYWxlcywgZ2VuZXJhciByZXBvcnRlcyBhdXRvbcOhdGljb3MgeSBldml0YXIgbXVs
dGFzIGRlIGhhc3RhICQ1MzUsMDAwIE1YTi4KCkNvbiAwMzUgVm9yZWNvbCBwdWVkZXM6CgoKCUFw
bGljYXIgZW5jdWVzdGFzIE5PTSAwMzUgZW4gbMOtbmVhLgoJT2J0ZW5lciByZXBvcnRlcyBjbGFy
b3MgeSBwZXJzb25hbGl6YWJsZXMuCglBY2NlZGVyIGRlc2RlIGN1YWxxdWllciBkaXNwb3NpdGl2
bywgMjQvNy4KCgpTaSBlc3TDoXMgYnVzY2FuZG8gY3VtcGxpciBjb24gbGEgbm9ybWEgeSBtZWpv
cmFyIGVsIGNsaW1hIGxhYm9yYWwsIHRlIGxvIHJlY29taWVuZG8gbXVjaMOtc2ltby4gU2kgcXVp
ZXJlcyBjb25vY2VyIG3DoXMgcHVlZGVzIHJlc3BvbmRlciBlc3RlIGNvcnJlbyBvIHNpbXBsZW1l
bnRlIGNvbnRhY3Rhcm1lLCBtaXMgZGF0b3MgZXN0w6FuIGFiYWpvLgoKU2FsdWRvcywKClZhbGVy
aWEgUMOpcmV6CkNETVg6ICg1NSkgNTAxOCAwNTY1CldoYXRzQXBwOiArNTIgMzMgMTYwNyAyMDg5
CgpTaSBubyBkZXNlYXMgcmVjaWJpciBtw6FzIGNvcnJlb3MsIGhheiBjbGljIGFxdcOtIHBhcmEg
ZGFydGUgZGUgYmFqYS4KCgoKClBhcmEgcmVtb3ZlciBzdSBkaXJlY2NpJm9hY3V0ZTtuIGRlIGVz
dGEgbGlzdGEgaGFnYSA8YSBocmVmPSJodHRwczovL3MxLmFycm9iYW1haWwuY29tL3Vuc3VzY3Jp
YmUucGhwP2lkPXdycml0eXNyd3B0c3B3cnNldXAiPmNsaWNrIGFxdSZpYWN1dGU7PC9hPgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3Bl
ciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBz
Oi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
