Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B75CB23F14
	for <lists+v9fs-developer@lfdr.de>; Wed, 13 Aug 2025 05:37:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Message-ID:From:To:Date:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=84FfI65R4uqNEeJXGFyXJCS0YVLhoB+hYyGZL/CgNP8=; b=iQXKQhp8I7Hh3e5v3w2rtg/+zE
	svrA0cX+Yl59cZgDEToftc/M3PN8sTz6WFaW1nScZxcMOIVpEzs+lZ7UQd0yusKw58adWR5Xs1kyC
	KzdWehdmRnQZlCIsuGvNPptOjMo/dzibPiVEHZD7t7B95uFGwnK0yqgmQbv+sKjxtWp8=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1um2JB-0007s5-Bu;
	Wed, 13 Aug 2025 03:37:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L3194S133745M924@s1.arrobamail.com>)
 id 1um2JA-0007rs-7m for v9fs-developer@lists.sourceforge.net;
 Wed, 13 Aug 2025 03:37:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G/CIVijgxUvtUxQoLjdkhWJZ7Bg14Gydw27A5ikS0dE=; b=T9da6/pruJ9fF/0evQeuT+DAnd
 xD7dAMmJZjO/Dc+C1mMM0t0lZXSyOPsf1PEeoWhvXtVcqDKUnHGdQP9iFV2c7ulryMyRQLnvWkBvS
 bqAgykhdcmAVPBpBiDKxRtDYY1YpabrSaW6xA6vEi0RAmBSG0ZInsakbsjmAzV/Ioi4s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=G/CIVijgxUvtUxQoLjdkhWJZ7Bg14Gydw27A5ikS0dE=; b=a
 1c7/omb8kx3aJjpIMmJWzgJDC0m5JbxH4pphPgaSACIKyHjwK3ibhL4RQVvXx72JgPFQz4tyo7+A3
 /FvAp4mqeWyD6TvrLy5g2uNdXvQjha8+vsjFVgZH+LPSAqR1F/9pqt97nVtiZTUdu2TDY5VHR1Ia0
 0tltxJcd7WjG6IRo=;
Received: from p144i156.pf.fmservers.net ([190.105.144.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1um2JA-0002T0-6O for v9fs-developer@lists.sourceforge.net;
 Wed, 13 Aug 2025 03:37:48 +0000
Date: Tue, 12 Aug 2025 22:37:36 -0500
To: V9fs-developer <v9fs-developer@lists.sourceforge.net>
From: =?utf-8?Q?Daniel_Rodr=C3=ADguez?= <daniel.rodriguez@consultores-rh.com>
Message-ID: <DQEWN1MTMUCn4snqZjABUsZivTd9SlnvbhxtFvVvE@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtOTI0LTMxOTQtMTMzNzQ1LTI2OS1zMS5hcnJvYmFtYWlsLmNvbQ==
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzkyNDszMTk0OzEzMzc0NTsyNjk=
X-bhid: X-bhd: 924;3194;133745
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 924:3194s133745:124931:WPservicesESP
X-Transport: p144i156
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1755056256; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Tue,=2012=20Aug=202025=2022:37:36=20-0500
 |To:V9fs-developer=20<v9fs-developer@lists.sourceforge.net>
 |From:=3D?utf-8?Q?Daniel_Rodr=3DC3=3DADguez?=3D=20<daniel.rodriguez@consul
 tores-rh.com>
 |Reply-To:=3D?utf-8?Q?Daniel_Rodr=3DC3=3DADguez?=3D=20<daniel.rodriguez@co
 nsultores-rh.com>
 |Subject:El=20feedback=20efectivo=20empieza=20con=20datos=20claros
 |Message-ID:<DQEWN1MTMUCn4snqZjABUsZivTd9SlnvbhxtFvVvE@s1.arrobamail.com>
 |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtOTI0LTMxOTQ
 tMTMzNzQ1LTI2OS1zMS5hcnJvYmFtYWlsLmNvbQ=3D=3D
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzkyNDszMTk0OzEzMz
 c0NTsyNjk=3D
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dwrr
 itysrwptspetseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:924:3194s133745:124931:WPservicesESP
 |List-ID:<38328:2407410> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_DQEWN1MTMUCn4snqZj
 ABUsZivTd9SlnvbhxtFvVvE";
 bh=G/CIVijgxUvtUxQoLjdkhWJZ7Bg14Gydw27A5ikS0dE=;
 b=UgTro0P0nCYDVHzzLX+dZEG4bUifbfj81oYH0JWw/72XBxru11DPFIQeFmjIEDgkbCcEGgnbG
 0a1i1H5PUS58wGEm4VnBBXxyGVMRnyUGBdrBXgQku6fFn40zNep1Jh597S8et5g4zmXeDT7Zg
 tz2eAkm2jGZKdVPQlyLD2wDqc=
X-Spam-Score: 2.9 (++)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Fortalece la evaluación del desempeño Fortalece la evaluación
    del desempeño con Vorecol 360 Feedback. 
 
 Content analysis details:   (2.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  4.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [190.105.144.156 listed in dnsbl-1.uceprotect.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
  0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
                             domains are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or identical to
                             background
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1um2JA-0002T0-6O
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] El feedback efectivo empieza con datos claros
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
Reply-To: =?utf-8?Q?Daniel_Rodr=C3=ADguez?=
 <daniel.rodriguez@consultores-rh.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgoKCUZvcnRhbGVjZSBsYSBldmFsdWFjacOzbiBkZWwgZGVzZW1wZcOxbwoKCkZvcnRhbGVjZSBs
YSBldmFsdWFjacOzbiBkZWwgZGVzZW1wZcOxbyBjb24gVm9yZWNvbCAzNjAgRmVlZGJhY2suCgoK
CgkKCQkKCQkJCgkJCUhvbGEsJm5ic3A7Vjlmcy1kZXZlbG9wZXIsCgoJCQlMYSByZXRyb2FsaW1l
bnRhY2nDs24gZXMgdW5hIGRlIGxhcyBoZXJyYW1pZW50YXMgbcOhcyBwb2Rlcm9zYXMgcGFyYSBl
bCBkZXNhcnJvbGxvIGRlIGxhcyBwZXJzb25hcywgcGVybyBtdWNoYXMgdmVjZXMgc2UgbGltaXRh
IGEgbGEgb3BpbmnDs24gZGUgdW4gc29sbyBsw61kZXIuIENvbiB1bmEgdmlzacOzbiBtw6FzIGFt
cGxpYSwgbGFzIGRlY2lzaW9uZXMgc2UgdnVlbHZlbiBtw6FzIGp1c3RhcyB5IGVmZWN0aXZhcy4K
CgkJCVZvcmVjb2wgMzYwIEZlZWRiYWNrIHRlIHBlcm1pdGUgZXZhbHVhciBlbCBkZXNlbXBlw7Fv
IGRlc2RlIG3Dumx0aXBsZXMgcGVyc3BlY3RpdmFzLCBvYnRlbmllbmRvIHVuYSBpbWFnZW4gY29t
cGxldGEgeSBvYmpldGl2YS4KCgkJCUNvbiBWb3JlY29sIDM2MCBGZWVkYmFjayBwdWVkZXM6CgoJ
CQnigKIgUmVjaWJpciBldmFsdWFjaW9uZXMgZGVzZGUgZGlmZXJlbnRlcyBmdWVudGVzOiBsw61k
ZXJlcywgcGFyZXMsIGNvbGFib3JhZG9yZXMgeSBhdXRvZXZhbHVhY2nDs24uCgoJCQnigKIgUGVy
c29uYWxpemFyIGNvbXBldGVuY2lhcyB5IGNyaXRlcmlvcyBzZWfDum4gZWwgcm9sIHkgbGFzIG1l
dGFzIGRlIGxhIG9yZ2FuaXphY2nDs24uCgoJCQnigKIgR2VuZXJhciByZXBvcnRlcyBjbGFyb3Mg
eSBhY2Npb25hYmxlcywgY29uIMOhcmVhcyBkZSBtZWpvcmEgeSBmb3J0YWxlemFzIGRlc3RhY2Fk
YXMuCgoJCQlFc3RvIGF5dWRhIGEgY3JlYXIgdW5hIGN1bHR1cmEgZGUgcmV0cm9hbGltZW50YWNp
w7NuIGNvbnRpbnVhIHkgbWVqb3JhIGNvbnN0YW50ZSBlbiB0b2RvcyBsb3Mgbml2ZWxlcy4KCgkJ
CVNpIGVzdMOhcyBidXNjYW5kbyBmb3J0YWxlY2VyIGxhIGV2YWx1YWNpw7NuIGRlbCBkZXNlbXBl
w7FvLCBlc3RhIHB1ZWRlIHNlciB1bmEgbXV5IGJ1ZW5hIG9wY2nDs24uIFNpIHF1aWVyZXMgY29u
b2NlciBtw6FzIHB1ZWRlcyByZXNwb25kZXIgZXN0ZSBjb3JyZW8gbyBzaW1wbGVtZW50ZSBjb250
YWN0YXJtZSwgbWlzIGRhdG9zIGVzdMOhbiBhYmFqby4KCgkJCVNhbHVkb3MsCgoJCQktLS0tLS0t
LS0tLS0tLQoKCQkJQXR0ZS46IERhbmllbCBSb2Ryw61ndWV6CgoJCQlDaXVkYWQgZGUgTcOpeGlj
bzogKDU1KSA1MDE4IDA1NjUKCgkJCVdoYXRzQXBwOiArNTIgMzMgMTYwNyAyMDg5CgoJCQlTaSBu
byBkZXNlYXMgcmVjaWJpciBtw6FzIGNvcnJlb3MsIGhheiBjbGljIGFxdcOtIHBhcmEgZGFydGUg
ZGUgYmFqYS4KCQkJCgkJCgkKCgoKCgpQYXJhIHJlbW92ZXIgc3UgZGlyZWNjaSZvYWN1dGU7biBk
ZSBlc3RhIGxpc3RhIGhhZ2EgPGEgaHJlZj0iaHR0cHM6Ly9zMS5hcnJvYmFtYWlsLmNvbS91bnN1
c2NyaWJlLnBocD9pZD13cnJpdHlzcndwdHNwZXRzZXVwIj5jbGljayBhcXUmaWFjdXRlOzwvYT4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZl
bG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApo
dHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Bl
cgo=
