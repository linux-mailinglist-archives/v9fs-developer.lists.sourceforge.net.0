Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0084D5A600B
	for <lists+v9fs-developer@lfdr.de>; Tue, 30 Aug 2022 12:01:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oSy3U-00022h-N2;
	Tue, 30 Aug 2022 10:01:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <01070182ee321035-3e60afa0-65a1-4a05-9694-522ca76ad000-000000@eu-central-1.amazonses.com>)
 id 1oSy37-000226-W2 for v9fs-developer@lists.sourceforge.net;
 Tue, 30 Aug 2022 10:00:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pcusqz/ji1mLVrSep2uDcr/TrfXx3BOzTgg5kvKS3AA=; b=haja4OwCgNG/JssdPQzft3L1xX
 zlLe4YdM7Dz4BJ8Dk90A/wx0V9YH5//osLx9zxHdgakufQD3hlORMGd+v29YS2K79ZX1+Q667s1yA
 KnaC32fO/DYvb7YHPuv/z//tQLyTF44clgErF7LxcL7oaYgq26pV4KZruZrU4wjkTTQQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=pcusqz/ji1mLVrSep2uDcr/TrfXx3BOzTgg5kvKS3AA=; b=jevg7xG75WZN
 JPzsLfKb36dlQ2fsEd0OdcmtPWRejfZWJqu592587zHDJAU2Q6lygmM5P+Kjlp6+7TtyH9bxlvXTz
 Ygjnr0vjL4CRkqBhPlVZKXV5k5kxa+TIeSuBQtmaYvcRznsfxRdWAbpqYUwZ6Vm8uBCm4ouolKGzI
 VgFms=;
Received: from b224-10.smtp-out.eu-central-1.amazonses.com ([69.169.224.10])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.95) id 1oSy30-007MuQ-6q
 for v9fs-developer@lists.sourceforge.net;
 Tue, 30 Aug 2022 10:00:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1661853634;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=0YNT+BS28OTZ2KsIpKbEQ+yzhDYkQmYsEO4063sctg4=;
 b=f689sVbFk3vK1wIxzCsbjZV9Juz0P56444mOe++ggV/pu5XwQpikqV1J9ASI6sz3
 XWfUSrV+91lGKkQrVDeZI6fjgKz0hXEFKhcwWz5xy9rNTCxbs/4m5szkQE5mHYsXmbx
 uASy7nqkn1n++kbQh7j7ldGZlHpeRwC8YHSst8ko=
Message-ID: <01070182ee321035-3e60afa0-65a1-4a05-9694-522ca76ad000-000000@eu-central-1.amazonses.com>
Date: Tue, 30 Aug 2022 10:00:34 +0000
From: Office <office@eko-med.ro>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.djyq42v8KkM0/QeLxShdouHjGcCwozGoD2tdHmaPOOk=:AmazonSES
X-SES-Outgoing: 2022.08.30-69.169.224.10
X-Spam-Score: 6.3 (++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Pretruile sunt negociabile [FarmersMarket-Top]
 [eko-med](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCIxNjQiLCI5MjA2MTE2MzBhN2QiLGZhbHNlXQ)
 Content analysis details:   (6.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: ekogroup.com.ro]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.169.224.10 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [69.169.224.10 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
 Colors in HTML
 2.5 URI_WP_HACKED_2        URI for compromised WordPress site, possible
 malware
X-Headers-End: 1oSy30-007MuQ-6q
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Produse anti-covid | negociaza preturile
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
Reply-To: Office <office@eko-med.ro>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

UHJldHJ1aWxlIHN1bnQgbmVnb2NpYWJpbGUKCltGYXJtZXJzTWFya2V0LVRvcF0KCltla28tbWVk
XShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2sm
YWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpS
ck5EUnpPRzlqWjJOcll6UWlMQ0l4TmpRaUxDSTVNakEyTVRFMk16QmhOMlFpTEdaaGJITmxYUSkK
ClBFU1RFIDUwMCBNSUxJT0FORSBERSBQUk9EVVNFCkFOVEktQ09WSUQgMTkKVkFORFVURSBJTiBU
T0FUQSBFVVJPUEEKCk9mZXJ0YSBub2FzdHJhIGN1cHJpbmRlOgotIHByb2R1c2UgYW50aS1jb3Zp
ZCAxOQotIGRpc3Bveml0aXZlIG1lZGljYWxlIGF2aXphdGUgTVMKLSBnYW1hIEhpZ3llbml1bQpf
X19fXwpPRkZJQ0VARUtPR1JPVVAuUk8KT0ZGSUNFQEVLTy1NRUQuUk8KKzQgMDc3MSA2NzUgMjQw
CgpbaWFtZ2UxXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9p
bnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1H
TmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TmpRaUxDSTVNakEyTVRFMk16QmhOMlFpTEda
aGJITmxYUSkKCkVLT0dST1VQLlJPIGlzIGFuIGludGVybmF0aW9uYWwgVFJBREUgY29tcGFueSB3
aXRoIGFyZWFzIG9mIGFjdGlvbiBpbiBkaWZmZXJlbnQgcmVnaW9ucyBvZiB0aGUgd29ybGQuCkFz
ayBmb3IgYSBwcmljZSBxdW90ZSBhbmQgeW91IHdpbGwgYmUgYW5zd2VyZWQgaW4gYSBtYXhpbXVt
IG9mIDQ4IGhvdXJzLgoKW3Rlc3RlIGNvdmlkXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWls
cG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dp
Ym1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TmpRaUxDSmxN
RGxqTVdZeFpXUXhaVEVpTEdaaGJITmxYUSkKCjgsNSBsZWksIHR2YSB6ZXJvCk9SSUNFIFRFU1Qg
YW50aS1jb3ZpZCAxOQoKW05lZ29jaWF6YSBwcmV0dXJpbGUgdGVsZWZvbmljXShodHRwczovL2Vr
b2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNr
JmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJO
cll6UWlMQ0l4TmpRaUxDSmxNRGxqTVdZeFpXUXhaVEVpTEdaaGJITmxYUSkKCltNYXNjYSBtZWRp
Y2FsYV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRy
YWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJz
MFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5qUWlMQ0psTURsak1XWXhaV1F4WlRFaUxHWmhiSE5s
WFEpCgowLDEyIGxlaSt0dmEKT1JJQ0UgTUFTQ0EgbWVkaWNhbGEKCltOZWdvY2lhemEgcHJldHVy
aWxlIHRlbGVmb25pY10oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVu
ZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellq
UTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5qUWlMQ0psTURsak1XWXhaV1F4WlRF
aUxHWmhiSE5sWFEpCgpbbWFzY2EgbWVkaWNhbGFdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21h
aWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05T
d2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhOalFpTENK
bE1EbGpNV1l4WldReFpURWlMR1poYkhObFhRKQoKMTkgbGVpICsgdHZhCk9SSUNFIFBST0RVUyBj
b3ZpZCAxOQoKW05lZ29jaWF6YSBwcmV0dXJpbGUgdGVsZWZvbmljXShodHRwczovL2Vrb2dyb3Vw
LmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9
V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlM
Q0l4TmpRaUxDSmxNRGxqTVdZeFpXUXhaVEVpTEdaaGJITmxYUSkKCltDYXB0dXJhzIZfZGVfZWNy
YW5fZGluXzIwMjItMDEtMDRfbGFfMTQuMDMuMTktcmVtb3ZlYmctcHJldmlld10oaHR0cHM6Ly9l
a29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGlj
ayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloy
TnJZelFpTENJeE5qUWlMQ0psTURsak1XWXhaV1F4WlRFaUxHWmhiSE5sWFEpCgowLDI1IGxlaSAr
IHR2YQpNYXN0aSBuZWdyZQoKW05lZ29jaWF6YSBwcmV0dXJpbGUgdGVsZWZvbmljXShodHRwczov
L2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNs
aWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlq
WjJOcll6UWlMQ0l4TmpRaUxDSmxNRGxqTVdZeFpXUXhaVEVpTEdaaGJITmxYUSkKCltDYXB0dXJh
zIZfZGVfZWNyYW5fZGluXzIwMjItMDEtMDRfbGFfMTQuMDQuMTktcmVtb3ZlYmctcHJldmlld10o
aHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFj
dGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJO
RFJ6T0c5aloyTnJZelFpTENJeE5qUWlMQ0psTURsak1XWXhaV1F4WlRFaUxHWmhiSE5sWFEpCgox
LDQgbGVpICsKTWFzdGkgRkZQIDIKCltOZWdvY2lhemEgcHJldHVyaWxlIHRlbGVmb25pY10oaHR0
cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlv
bj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6
T0c5aloyTnJZelFpTENJeE5qUWlMQ0psTURsak1XWXhaV1F4WlRFaUxHWmhiSE5sWFEpCgpbaW1h
Z2U3XShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJh
Y2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMw
WXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TmpRaUxDSmxNRGxqTVdZeFpXUXhaVEVpTEdaaGJITmxY
USkKCjgsNSBsZWkgdHZhIHplcm8KVGVzdGUgMSBidWMvY3V0aWUKCltOZWdvY2lhemEgcHJldHVy
aWxlIHRlbGVmb25pY10oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVu
ZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellq
UTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5qUWlMQ0psTURsak1XWXhaV1F4WlRF
aUxHWmhiSE5sWFEpCgpbSGlnZW55dW1dKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0
X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4
YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhOalFpTENJNU1qQTJN
VEUyTXpCaE4yUWlMR1poYkhObFhRKQoKQ2VyZSBvZmVydGEgSGlnZW55dW0KCltOZWdvY2lhemEg
cHJldHVyaWxlXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9p
bnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1H
TmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TmpRaUxDSTVNakEyTVRFMk16QmhOMlFpTEda
aGJITmxYUSkKCltQcm9kdXNlIGNvdmlkXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9l
dF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1s
eGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TmpRaUxDSTVNakEy
TVRFMk16QmhOMlFpTEdaaGJITmxYUSkKCkNlcmUgb2ZlcnRhIGNvbXBsZXRhCgpbTmVnb2NpYXph
IHByZXR1cmlsZV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBv
aW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBN
R05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5qUWlMQ0k1TWpBMk1URTJNekJoTjJRaUxH
WmhiSE5sWFEpCgpbUHJvZHVzZSBtZWRpY2FsZV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFp
bHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3
aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5qUWlMQ0k1
TWpBMk1URTJNekJoTjJRaUxHWmhiSE5sWFEpCgpPcmljZSBhcGFyYXQgbWVkaWNhbAoKW0NlcmUg
b2ZlcnRhIHBlIG1haWxdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZl
bmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZ
alEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhOalFpTENJNU1qQTJNVEUyTXpCaE4y
UWlMR1poYkhObFhRKQoKW2Vrby1tZWRdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0
X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4
YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhOalFpTENJNU1qQTJN
VEUyTXpCaE4yUWlMR1poYkhObFhRKQoKW2ZhY2Vib29rXShodHRwczovL2Vrb2dyb3VwLmNvbS5y
bz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16
QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TmpR
aUxDSmtPVEl3WlRrMk5UZG1ObVFpTEdaaGJITmxYUSkgW2luc3RhZ3JhbV0oaHR0cHM6Ly9la29n
cm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZk
YXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZ
elFpTENJeE5qUWlMQ0ppWXpReU9EQm1NR1k1WmpjaUxHWmhiSE5sWFEpCltVbnN1YnNjcmliZV0o
aHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFj
dGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJO
RFJ6T0c5aloyTnJZelFpTENJeE5qUWlMQ0prTlRVNFlXWTJZV1E0TVdJaUxHWmhiSE5sWFEpIHwg
W01hbmFnZSB5b3VyIHN1YnNjcmlwdGlvbl0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBv
ZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJt
bHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5qUWlMQ0l5T1Rs
ak1qa3hOekF5TWpBaUxHWmhiSE5sWFEpCl9fX19fXwpvZmZpY2VAZWtvLW1lZC5ybworNCAwNzcx
IDY3NSAyNDAKCltGYXJtZXJzTWFya2V0LUJvdHRvbV0KCltNYWlsUG9ldF0oaHR0cHM6Ly9la29n
cm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZk
YXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZ
elFpTENJeE5qUWlMQ0k0WVdRNFltVTBNekUzTkdJaUxHWmhiSE5sWFEpCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5n
IGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
