Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C015EC2753F
	for <lists+v9fs-developer@lfdr.de>; Sat, 01 Nov 2025 02:22:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:MIME-Version:Message-ID:From:To:Date:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mHRhQI7R3wBNNNxpfs8T/DJH544BG07/n1re1e3Kg0c=; b=Vzw43KTsUnLwg6M1gs8g4hN4Jz
	05DyeFbtSwYJHDJtNnHvHJushqtbOwqjZ0XCxuivW32cgQmtlzuusxZ4kX/zyYsJ+5zDrzzqhbbDx
	urWJEv8uekXi/o/8eoSuBSOxwL31G7a0uQuoirx6fJcgKZ0VnZ/fhAuVSZOc7NnK9qyU=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1vF0KJ-0000t3-5n;
	Sat, 01 Nov 2025 01:22:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L3194S133745M1003@s1.arrobamail.com>)
 id 1vF0KG-0000sw-C6 for v9fs-developer@lists.sourceforge.net;
 Sat, 01 Nov 2025 01:22:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RL49zsorUO6xiz+zmVevvxKbBSzlj/ETboiHUWJ8Q9c=; b=kE1X5CmRSzlbaZ0B04Q631bBqg
 eNjN+03PPQAFRY1NLG+lW1VEl+rR2h5TLoVYPjBW/+J6mgOcgBpgsRfNH2SsnS3relb1mbyRP4oc/
 N6z/8duPgJx5+P06j1dwfy6NF6Fcte/eOhu0EjyliD21QQVHShMYwcUEdfsOqpq8b7eo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RL49zsorUO6xiz+zmVevvxKbBSzlj/ETboiHUWJ8Q9c=; b=I
 iVO3avxa8bTXbVgyrRG57Zi/HlxWGQ7PTBE5+JWGYVcseP/FtKrelCGIQx/jHRK35CGpSHu9+NcpT
 Vs0BLFBwDwiDQnVcujs1CK1jrpBnX9qUzKyRm4BW60XrAlHB29zGbrUp3L7Cuokc/VeJ7D9oaXUHY
 hsh3Dmu1yEhdT3MU=;
Received: from p144i156.pf.fmservers.net ([190.105.144.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vF0KF-0001V9-BY for v9fs-developer@lists.sourceforge.net;
 Sat, 01 Nov 2025 01:22:40 +0000
Date: Fri, 31 Oct 2025 19:22:32 -0600
To: V9fs-developer <v9fs-developer@lists.sourceforge.net>
From: =?utf-8?Q?Luis_Rodr=C3=ADguez?= <luis.rodriguez@consultores-rh.com>
Message-ID: <EJFBCcDzW1vyZcbeJVBlqXix9OyjjUnWwxw5EMR8@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtMTAwMy0zMTk0LTEzMzc0NS0yNjktczEuYXJyb2JhbWFpbC5jb20=
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzEwMDM7MzE5NDsxMzM3NDU7MjY5
X-bhid: X-bhd: 1003;3194;133745
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 1003:3194s133745:124931:WPservicesESP
X-Transport: p144i156
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1761960152; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Fri,=2031=20Oct=202025=2019:22:32=20-0600
 |To:V9fs-developer=20<v9fs-developer@lists.sourceforge.net>
 |From:=3D?utf-8?Q?Luis_Rodr=3DC3=3DADguez?=3D=20<luis.rodriguez@consultore
 s-rh.com>
 |Reply-To:=3D?utf-8?Q?Luis_Rodr=3DC3=3DADguez?=3D=20<luis.rodriguez@consul
 tores-rh.com>
 |Subject:=3D?utf-8?Q?=3DC2=3DBFTu_evaluaci=3DC3=3DB3n_de_desempe=3DC3=3DB1
 o_es_realmente_objetiva=3D3F?=3D
 |Message-ID:<EJFBCcDzW1vyZcbeJVBlqXix9OyjjUnWwxw5EMR8@s1.arrobamail.com>
 |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtMTAwMy0zMTk
 0LTEzMzc0NS0yNjktczEuYXJyb2JhbWFpbC5jb20=3D
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzEwMDM7MzE5NDsxMz
 M3NDU7MjY5
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dwrr
 itysrwptswqqrseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:1003:3194s133745:124931:WPservicesESP
 |List-ID:<38328:2407410> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_EJFBCcDzW1vyZcbeJV
 BlqXix9OyjjUnWwxw5EMR8";
 bh=LQhukVkTLHB4elTkMdHlPab9GbjAF+HdaLK38sTO+k8=;
 b=qx1QDdKSyM17cIqXPUwSpxWHOxVxyrWTD6c23zwF+71Sv/d0ELDi4KAPiyf39YPHhSg8Chlc8
 vTT+IT5R8g2koeYuZ0Yad5huPJQn9kvuoEGSWrdziHz9PdNA28+ArUBVi+a7EMnfN4blOWUN+
 X0QsFgnkDW49aOkzTh6JICgTQ=
X-Spam-Score: 3.9 (+++)
X-Spam-Report: Spam detection software, running on the system "sfi-spamd-1.hosts.colo.sdot.me",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Evaluaciones de Desempeño Objetivas con Vorecol 360 Feedback
    body { margin: 0; padding: 0; font-family: Arial, Helvetica, sans-serif;
   font-size: 14px; color: #333333; background-color: #ffffff; } ta [...] 
 
 Content analysis details:   (3.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  4.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [190.105.144.156 listed in dnsbl-1.uceprotect.net]
  1.0 RCVD_IN_UCE2           RBL: IP Subnet Listed in UCEPROTECT Level 2
                             [190.105.144.156 listed in dnsbl-2.uceprotect.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
                             domains are different
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or identical to
                             background
  0.0 HTML_IMAGE_ONLY_32     BODY: HTML: images with 2800-3200 bytes of words
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1vF0KF-0001V9-BY
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?=C2=BFTu_evaluaci=C3=B3n_de_desempe?=
 =?utf-8?q?=C3=B1o_es_realmente_objetiva=3F?=
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
Reply-To: =?utf-8?Q?Luis_Rodr=C3=ADguez?= <luis.rodriguez@consultores-rh.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgoKCUV2YWx1YWNpb25lcyBkZSBEZXNlbXBlw7FvIE9iamV0aXZhcyBjb24gVm9yZWNvbCAzNjAg
RmVlZGJhY2sKCWJvZHkgewogICAgICBtYXJnaW46IDA7CiAgICAgIHBhZGRpbmc6IDA7CiAgICAg
IGZvbnQtZmFtaWx5OiBBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOwogICAgICBmb250LXNp
emU6IDE0cHg7CiAgICAgIGNvbG9yOiAjMzMzMzMzOwogICAgICBiYWNrZ3JvdW5kLWNvbG9yOiAj
ZmZmZmZmOwogICAgfQogICAgdGFibGUgewogICAgICBib3JkZXItc3BhY2luZzogMDsKICAgICAg
d2lkdGg6IDEwMCU7CiAgICAgIG1heC13aWR0aDogNjAwcHg7CiAgICAgIG1hcmdpbjogYXV0bzsK
ICAgIH0KICAgIHRkIHsKICAgICAgcGFkZGluZzogMTJweCAyMHB4OwogICAgfQogICAgYSB7CiAg
ICAgIGNvbG9yOiAjMWE3M2U4OwogICAgICB0ZXh0LWRlY29yYXRpb246IG5vbmU7CiAgICB9CiAg
ICAuZm9vdGVyIHsKICAgICAgZm9udC1zaXplOiAxMnB4OwogICAgICBjb2xvcjogIzg4ODg4ODsK
ICAgICAgdGV4dC1hbGlnbjogY2VudGVyOwogICAgICBwYWRkaW5nLXRvcDogMTBweDsKICAgIH0K
CQoKCk1lam9yYSB0dXMgZXZhbHVhY2lvbmVzIGRlIGRlc2VtcGXDsW8gY29uIGZlZWRiYWNrIDM2
MCByZWFsIHkgYXV0b21hdGl6YWRvLgoKCgkKCQkKCQkJCgkJCUhvbGEsCgoJCQnCv1RlIGhhcyBw
cmVndW50YWRvIHF1w6kgdGFuIGNvbXBsZXRhcyBzb24gdHVzIGV2YWx1YWNpb25lcyBkZSBkZXNl
bXBlw7FvPwoKCQkJRW4gVm9yZWNvbCAzNjAgRmVlZGJhY2sgdGUgYXl1ZGFtb3MgYSBpbXBsZW1l
bnRhciBldmFsdWFjaW9uZXMgdmVyZGFkZXJhbWVudGUgb2JqZXRpdmFzLCByZWNvZ2llbmRvIHBl
cmNlcGNpb25lcyBkZXNkZSB0b2RhcyBsYXMgZGlyZWNjaW9uZXM6IGzDrWRlcmVzLCBwYXJlcywg
Y29sYWJvcmFkb3JlcyB5IGF1dG9ldmFsdWFjacOzbi4KCgkJCUxvIHF1ZSBtw6FzIHZhbG9yYW4g
bnVlc3Ryb3MgY2xpZW50ZXMgZGUgUlJISCBlcyBxdWU6CgoJCQkKCQkJCU9idGllbmVuIHVuYSB2
aXNpw7NuIGNvbXBsZXRhIHkgcmVhbCBkZWwgZGVzZW1wZcOxby4KCQkJCUZvbWVudGFuIHVuYSBj
dWx0dXJhIGRlIGZlZWRiYWNrIGNvbnN0cnVjdGl2by4KCQkJCUlkZW50aWZpY2FuIG9wb3J0dW5p
ZGFkZXMgZGUgZGVzYXJyb2xsbyBjb24gbWF5b3IgcHJlY2lzacOzbi4KCQkJCUF1dG9tYXRpemFu
IHRvZG8gZWwgcHJvY2VzbyBjb24gcmVwb3J0ZXMgY2xhcm9zIHkgcGVyc29uYWxpemFibGVzLgoJ
CQkKCgkJCVNpIGVzdMOhcyBidXNjYW5kbyBtZWpvcmFyIHR1cyBldmFsdWFjaW9uZXMgeSBmb3J0
YWxlY2VyIGVsIGRlc2Fycm9sbG8gaW50ZXJubywgdGUgbG8gcmVjb21pZW5kbyBtdWNow61zaW1v
LiBQYXJhIG3DoXMgaW5mb3JtYWNpw7NuIHB1ZWRlcyByZXNwb25kZXIgZXN0ZSBjb3JyZW8gbyBs
bGFtYXJtZSBhbCBuw7ptZXJvIGRlIGFiYWpvLgoKCQkJU2FsdWRvcywKCgkJCS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQoKCQkJQXR0ZS46IEx1aXMgUm9kcsOtZ3VlegoKCQkJQ2l1ZGFkIGRlIE3D
qXhpY286ICg1NSkgNTAxOCAwNTY1CgoJCQlXaGF0c0FwcDogKzUyIDMzIDE2MDcgMjA4OQoKCQkJ
U2kgbm8gZGVzZWFzIHJlY2liaXIgbcOhcyBjb3JyZW9zLCBoYXogY2xpYyBhcXXDrSBwYXJhIGRh
cnRlIGRlIGJhamEuCgkJCQoJCQoJCgoKCgoKUGFyYSByZW1vdmVyIHN1IGRpcmVjY2kmb2FjdXRl
O24gZGUgZXN0YSBsaXN0YSBoYWdhIDxhIGhyZWY9Imh0dHBzOi8vczEuYXJyb2JhbWFpbC5jb20v
dW5zdXNjcmliZS5waHA/aWQ9d3JyaXR5c3J3cHRzd3FxcnNldXAiPmNsaWNrIGFxdSZpYWN1dGU7
PC9hPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZz
LWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2Uu
bmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2
ZWxvcGVyCg==
