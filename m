Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A68AEA8FD
	for <lists+v9fs-developer@lfdr.de>; Thu, 26 Jun 2025 23:46:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Message-ID:From:To:Date:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qK3P9t6vs5w8BHtGLHRj6B2IIKQuZEbYU3JwGVITxHw=; b=EOv1SJrOuo0qgdB4iPQXQqkc1F
	9KbXIc2RgsUjPnICdCc8owv3CgKgMk0Y5MbgW19lkbxA1TfFLH/FpnliIbulv+wr/Zwy5WCyMhrE/
	umeceREvD7wPGXkBejMDESEz9Kz0ZjgZAYgoVPSwMp/wACv3v+4gmOA3Npu/1IBTEWfo=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1uUuQE-0006MW-CA;
	Thu, 26 Jun 2025 21:46:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L35S138850M755@s1.arrobamail.com>)
 id 1uUuQD-0006MK-Jl for v9fs-developer@lists.sourceforge.net;
 Thu, 26 Jun 2025 21:46:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2qnjCftjDVdLxjKXN2veFCYzxA31RkGzpq2EISFVT2k=; b=VLCZ/nrA1kmUjFlq6jzd6POAe7
 s+tks0CTVwe03J3bOfIMPfDX93UqbZixXnvYSeXSCF/uG5s60kWKa7ykzABzjJXx+B5AX0I8Uyr1O
 bCLEaEMCU0Yxvmo6rgyh2FandPKyo/XzcYHmh994abtr2NEk/xdRJfkCjBsxC1HPXs3g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=2qnjCftjDVdLxjKXN2veFCYzxA31RkGzpq2EISFVT2k=; b=G
 SYNCcAiXmoP5XUNt64M6J9VKKJOmD/jVd6LrlKnFHt/cywP/Cq0qaKJOsHifRSI2fni0uSvegitWL
 SuE+w+NPz6u+DSf3UpFLzOmwQxA2kJxy3kH+ZKP2Bzm6EUlL1kh5VSO6YIOoXyWXnUyoTQ/gfv+B3
 8ngqDTidcCf0WLok=;
Received: from p144i156.pf.fmservers.net ([190.105.144.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uUuQC-0000Zu-Nf for v9fs-developer@lists.sourceforge.net;
 Thu, 26 Jun 2025 21:46:17 +0000
Date: Thu, 26 Jun 2025 16:46:05 -0500
To: v9fs-developer@lists.sourceforge.net
From: Mariann Rivas <mariann.rivas@consultores-rh.com>
Message-ID: <VQBUtYVoPcsXAaZ6EEpHhD36aVyqqX2o2IucwXMtQI@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtNzU1LTM1LTEzODg1MC0yNjktczEuYXJyb2JhbWFpbC5jb20=
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Ozc1NTszNTsxMzg4NTA7MjY5
X-bhid: X-bhd: 755;35;138850
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 755:35s138850:124931:WPservicesESP
X-Transport: p144i156
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1750974365; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Thu,=2026=20Jun=202025=2016:46:05=20-0500
 |To:v9fs-developer@lists.sourceforge.net
 |From:Mariann=20Rivas=20<mariann.rivas@consultores-rh.com>
 |Reply-To:Mariann=20Rivas=20<mariann.rivas@consultores-rh.com>
 |Subject:=3D?utf-8?Q?=3DC2=3DBFSabes_si_est=3DC3=3DA1s_cumpliendo_correcta
 mente_con_la_NOM_035=3D3F?=3D
 |Message-ID:<VQBUtYVoPcsXAaZ6EEpHhD36aVyqqX2o2IucwXMtQI@s1.arrobamail.com>
 |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtNzU1LTM1LTE
 zODg1MC0yNjktczEuYXJyb2JhbWFpbC5jb20=3D
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Ozc1NTszNTsxMzg4NT
 A7MjY5
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dwro
 oyqsrysiyyseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:755:35s138850:124931:WPservicesESP
 |List-ID:<420:2499300> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_VQBUtYVoPcsXAaZ6EE
 pHhD36aVyqqX2o2IucwXMtQI";
 bh=2qnjCftjDVdLxjKXN2veFCYzxA31RkGzpq2EISFVT2k=;
 b=MGuzZIo6yjeRG6EFRxgkl7w5QxXZ9UunnVWOuGakRl4g/A33kIRcKZdZaZHNeHGc0jDQ/X7tx
 UX42+/29n2d83lpGHGKG5PBnlfOLXKEXgTkL8ii6mNQXs4r8unEmVYh7ihdlSY8JlPG3sFBdC
 b3UzvsUCfyNU21goyVXNS5A2w=
X-Spam-Score: 3.2 (+++)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hola, La NOM 035 exige que las empresas evalúen el entorno
    laboral y gestionen los factores de riesgo psicosocial que puedan afectar
    la salud de sus colaboradores. Sin embargo, cumplir con esta normativa p
   [...] 
 
 Content analysis details:   (3.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
                             was blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
                              for more information.
                             [190.105.144.156 listed in list.dnswl.org]
  0.3 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
                             [190.105.144.156 listed in bl.mailspike.net]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  4.0 RCVD_IN_MSPIKE_BL      Mailspike blocklisted
  0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
                             domains are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1uUuQC-0000Zu-Nf
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

CgoKCQoKCkhvbGEsCgpMYSBOT00gMDM1IGV4aWdlIHF1ZSBsYXMgZW1wcmVzYXMgZXZhbMO6ZW4g
ZWwgZW50b3JubyBsYWJvcmFsIHkgZ2VzdGlvbmVuIGxvcyBmYWN0b3JlcyBkZSByaWVzZ28gcHNp
Y29zb2NpYWwgcXVlIHB1ZWRhbiBhZmVjdGFyIGxhIHNhbHVkIGRlIHN1cyBjb2xhYm9yYWRvcmVz
LiBTaW4gZW1iYXJnbywgY3VtcGxpciBjb24gZXN0YSBub3JtYXRpdmEgcHVlZGUgc2VyIHVuIGRl
c2Fmw61vIHNpbiBsYXMgaGVycmFtaWVudGFzIGFkZWN1YWRhcy4KCkNvbiBWb3JlY29sIE5PTSAw
MzUsIHB1ZWRlcyBhcGxpY2FyIHkgZ2VzdGlvbmFyIGxhcyBlbmN1ZXN0YXMgbmVjZXNhcmlhcyBk
ZSBtYW5lcmEgw6FnaWwgeSBzaW4gY29tcGxpY2FjaW9uZXMsIGFzZWd1cmFuZG8gZWwgY3VtcGxp
bWllbnRvIGRlIGxhIG5vcm1hdGl2YSB5IHByb21vdmllbmRvIHVuIGVudG9ybm8gZGUgdHJhYmFq
byBzYWx1ZGFibGUuCgrCv1F1w6kgdGUgb2ZyZWNlbW9zIGNvbiBudWVzdHJhIGhlcnJhbWllbnRh
PwoKCglBcGxpY2FjacOzbiByw6FwaWRhIHkgc2VuY2lsbGEgZGUgZW5jdWVzdGFzIGRlIHJpZXNn
b3MgcHNpY29zb2NpYWxlcwoJQW7DoWxpc2lzIGRlIHJlc3VsdGFkb3MgZW4gdGllbXBvIHJlYWwg
cGFyYSBpZGVudGlmaWNhciDDoXJlYXMgZGUgbWVqb3JhCglJbmZvcm1lcyBjb21wbGV0b3MgeSBk
ZXRhbGxhZG9zLCBsaXN0b3MgcGFyYSBwcmVzZW50YXIgYSBsYXMgYXV0b3JpZGFkZXMKCUludGVn
cmFjacOzbiBjb24gb3Ryb3Mgc2lzdGVtYXMgZGUgUlJISCBwYXJhIGNlbnRyYWxpemFyIGxvcyBw
cm9jZXNvcwoJU29wb3J0ZSBtdWx0aWxpbmfDvGUgcGFyYSBlcXVpcG9zIGRlIGRpZmVyZW50ZXMg
cmVnaW9uZXMKCgpDb24gVm9yZWNvbCBOT00gMDM1LCBubyBzb2xvIGN1bXBsZXMgY29uIGxhIGxl
eSwgc2lubyBxdWUgdGFtYmnDqW4gZGVtdWVzdHJhcyB1biBjb21wcm9taXNvIGNvbiBlbCBiaWVu
ZXN0YXIgZGUgdHUgZXF1aXBvLCBwcm9tb3ZpZW5kbyB1biBhbWJpZW50ZSBsYWJvcmFsIHNhbm8g
eSBwcm9kdWN0aXZvLgoKwr9RdWllcmVzIHNhYmVyIG3DoXM/IEVzY3LDrWJlbWUgeSBjb24gZ3Vz
dG8gdGUgY29tcGFydG8gZGV0YWxsZXMgbyBwdWVkZXMgbGxhbWFybWUsIG1pcyBkYXRvcyBlc3Rh
biBhYmFqby4KCi0tLS0tLS0tLS0tLS0tCgpBdHRlOiBNYXJpYW5uIFJpdmFzCgpDaXVkYWQgZGUg
TcOpeGljbzogKDU1KSA1MDE4IDA1NjUKCldoYXRzQXBwOiZuYnNwOys1MiAzMyAxNjA3IDIwODkK
CiZuYnNwOwoKUGFyYSBkZSBzdXNjcmliaXJ0ZSBkZSBlc3RhIGxpc3RhIGhheiBjbGljJm5ic3A7
YXF1aQoKJm5ic3A7CgoKCgpQYXJhIHJlbW92ZXIgc3UgZGlyZWNjaSZvYWN1dGU7biBkZSBlc3Rh
IGxpc3RhIGhhZ2EgPGEgaHJlZj0iaHR0cHM6Ly9zMS5hcnJvYmFtYWlsLmNvbS91bnN1c2NyaWJl
LnBocD9pZD13cm9veXFzcnlzaXl5c2V1cCI+Y2xpY2sgYXF1JmlhY3V0ZTs8L2E+Cl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1h
aWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
