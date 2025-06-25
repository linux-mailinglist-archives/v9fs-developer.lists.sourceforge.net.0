Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 45813AE8D1A
	for <lists+v9fs-developer@lfdr.de>; Wed, 25 Jun 2025 20:55:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Message-ID:From:To:Date:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=p31XsgBRkywAQzy6E9DBWsTTEQm7wxWxOuxnwpOrvHo=; b=DHQ+6VB7OmCHFqAaT1kPD5QLRx
	9qdoaLwH7VdDTG3TLGeyoF4/zwAWTO3UHvX5Lk91cWDY0FBzJ9s20WV1kIxI6xZZI8wn8B+2l92Qo
	v2mVbenObclnjj/Yrev0OmnzzeweRNpr9m0kw4qe4wgGcxj+7Jd+zthypEf7d9l0kisw=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1uUVHO-0004uj-Um;
	Wed, 25 Jun 2025 18:55:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L35S138850M747@s1.arrobamail.com>)
 id 1uUVHN-0004ud-QJ for v9fs-developer@lists.sourceforge.net;
 Wed, 25 Jun 2025 18:55:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z2F9QrUfeMJML8jCjdnhavSbwjwJVj9W4NIXW8XlWqA=; b=ih3NhzSa0IVcuBbh0OSHH9xPTa
 HRgly1J8PrIv/JUYiS/35X6emQBfWytEovOrziaaVQxwsCvLCICyYi1bHfPxF07TnxpbRvLkW9eNh
 UpSZUDAau5qgsP8GT+IsmnZX4OlHM+p0QdF9jtEi0mGFxp8/5tTdZrJIO8qRQBGYDUU8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Z2F9QrUfeMJML8jCjdnhavSbwjwJVj9W4NIXW8XlWqA=; b=a
 fW+blippOtc5AGzGslfQitPjuHvVnu00RxVp9ssNJkXqXRNwCvAcHSn8KGC4aU/n8Ssm0ZMIulyUy
 TkLHpijetIT1QICBeWP+tA8ENhtTsJlTV0zC4STlAkA+KUoda1Fv+ToKr/mzroqFHRciFYZOOOEA/
 v9yPYV3WGrP2IK+0=;
Received: from p144i156.pf.fmservers.net ([190.105.144.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uUVHM-0000cG-7l for v9fs-developer@lists.sourceforge.net;
 Wed, 25 Jun 2025 18:55:29 +0000
Date: Wed, 25 Jun 2025 13:55:16 -0500
To: v9fs-developer@lists.sourceforge.net
From: =?utf-8?Q?Luis_Ram=C3=ADrez?= <luis.ramirez@consultores-rh.com>
Message-ID: <L3Yfp1ntliR1yV8Y2doBfCFFIwq0ixXyTy80fvkSvtY@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtNzQ3LTM1LTEzODg1MC0yNjktczEuYXJyb2JhbWFpbC5jb20=
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Ozc0NzszNTsxMzg4NTA7MjY5
X-bhid: X-bhd: 747;35;138850
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 747:35s138850:124931:WPservicesESP
X-Transport: p144i156
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1750877716; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Wed,=2025=20Jun=202025=2013:55:16=20-0500
 |To:v9fs-developer@lists.sourceforge.net
 |From:=3D?utf-8?Q?Luis_Ram=3DC3=3DADrez?=3D=20<luis.ramirez@consultores-rh
 .com>
 |Reply-To:=3D?utf-8?Q?Luis_Ram=3DC3=3DADrez?=3D=20<luis.ramirez@consultore
 s-rh.com>
 |Subject:Clima=20laboral=20bajo=20control:=20sin=20Excel,=20sin=20suposici
 ones.
 |Message-ID:<L3Yfp1ntliR1yV8Y2doBfCFFIwq0ixXyTy80fvkSvtY@s1.arrobamail.com
 > |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtNzQ3LTM1LTE
 zODg1MC0yNjktczEuYXJyb2JhbWFpbC5jb20=3D
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Ozc0NzszNTsxMzg4NT
 A7MjY5
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dwro
 oyqsrysitiseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:747:35s138850:124931:WPservicesESP
 |List-ID:<420:2499300> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_L3Yfp1ntliR1yV8Y2d
 oBfCFFIwq0ixXyTy80fvkSvtY";
 bh=Z2F9QrUfeMJML8jCjdnhavSbwjwJVj9W4NIXW8XlWqA=;
 b=MqXv9w586uhttie1ZAkNnT2qpNZZXOZK7s+KenYylHXO1ueS5A8NfAUe/aLxZ6KVI6jzzT9vF
 SwSkaeCq36aDBAa7seQPgk1l/rmyRP6+bB8X9fElGGzSpczYXBI3R3pKYwYhpJ3nKc3sXoCF7
 U7hP+/3iOdWIk4mdjmwi/eD1I=
X-Spam-Score: 3.2 (+++)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-2.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hola. Una buena cultura organizacional no se construye a
   ciegas. Saber cómo se siente tu equipo es el primer paso para mejorar el
   compromiso, la productividad y la permanencia del talento. 
 
 Content analysis details:   (3.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.3 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
                             [190.105.144.156 listed in bl.mailspike.net]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  4.0 RCVD_IN_MSPIKE_BL      Mailspike blocklisted
  0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
                             domains are different
  0.0 HTML_IMAGE_ONLY_32     BODY: HTML: images with 2800-3200 bytes of words
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1uUVHM-0000cG-7l
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Clima laboral bajo control: sin Excel,
 sin suposiciones.
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
Reply-To: =?utf-8?Q?Luis_Ram=C3=ADrez?= <luis.ramirez@consultores-rh.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgoKCQoKCkhvbGEuCgpVbmEgYnVlbmEgY3VsdHVyYSBvcmdhbml6YWNpb25hbCBubyBzZSBjb25z
dHJ1eWUgYSBjaWVnYXMuIFNhYmVyIGPDs21vIHNlIHNpZW50ZSB0dSBlcXVpcG8gZXMgZWwgcHJp
bWVyIHBhc28gcGFyYSBtZWpvcmFyIGVsIGNvbXByb21pc28sIGxhIHByb2R1Y3RpdmlkYWQgeSBs
YSBwZXJtYW5lbmNpYSBkZWwgdGFsZW50by4KCldvcmsgRW52aXJvbm1lbnQgZXMgdW5hIGhlcnJh
bWllbnRhIGRpZ2l0YWwgcGFyYSBldmFsdWFyIGVsIGNsaW1hIGxhYm9yYWwgZGUgZm9ybWEgY2xh
cmEsIHLDoXBpZGEgeSBlZmljaWVudGU6CgoKCUVuY3Vlc3RhcyBjb25maWd1cmFibGVzIHNlZ8O6
biBsb3MgdmFsb3JlcyB5IG9iamV0aXZvcyBkZSB0dSBlbXByZXNhCglJbmZvcm1lcyB2aXN1YWxl
cyBjb24gc2VnbWVudGFjacOzbiBwb3Igw6FyZWFzIG8gY2FyZ29zCglDb21wYXJhdGl2YXMgZW50
cmUgcGVyaW9kb3MgcGFyYSBtZWRpciBldm9sdWNpw7NuCglSZWNvbGVjY2nDs24geSBhbsOhbGlz
aXMgZGUgZGF0b3MgZW4gdW5hIHNvbGEgcGxhdGFmb3JtYQoKCkV2YWzDumEsIGVudGllbmRlIHkg
dHJhbnNmb3JtYSBlbCBlbnRvcm5vIGRlIHRyYWJham8gY29uIGRlY2lzaW9uZXMgaW5mb3JtYWRh
cy4KCsK/UXVpZXJlcyBzYWJlciBtw6FzPyBFc2Nyw61iZW1lIHkgY29uIGd1c3RvIHRlIGNvbXBh
cnRvIGRldGFsbGVzIG8gcHVlZGVzIGxsYW1hcm1lLCBtaXMgZGF0b3MgZXN0YW4gYWJham8uCgot
LS0tLS0tLS0tLS0tLQoKQXR0ZTogTHVpcyBSYW1pcmV6CgpDaXVkYWQgZGUgTcOpeGljbzogKDU1
KSA1MDE4IDA1NjUKCldoYXRzQXBwOiZuYnNwOys1MiAzMyAxNjA3IDIwODkKCiZuYnNwOwoKUGFy
YSBkZXN1c2NyaWJpcnRlIGRlIGVzdGEgbGlzdGEgaGF6Jm5ic3A7Y2xpY2sgYXF1aQoKCgoKUGFy
YSByZW1vdmVyIHN1IGRpcmVjY2kmb2FjdXRlO24gZGUgZXN0YSBsaXN0YSBoYWdhIDxhIGhyZWY9
Imh0dHBzOi8vczEuYXJyb2JhbWFpbC5jb20vdW5zdXNjcmliZS5waHA/aWQ9d3Jvb3lxc3J5c2l0
aXNldXAiPmNsaWNrIGFxdSZpYWN1dGU7PC9hPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZl
bG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0
L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
