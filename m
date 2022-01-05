Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 730744851C6
	for <lists+v9fs-developer@lfdr.de>; Wed,  5 Jan 2022 12:29:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n54UA-00039v-Ff; Wed, 05 Jan 2022 11:29:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <0107017e2a00545b-6dee6d41-6fb2-4ce3-8a11-0427e32741aa-000000@eu-central-1.amazonses.com>)
 id 1n54U8-00039p-Ma
 for v9fs-developer@lists.sourceforge.net; Wed, 05 Jan 2022 11:29:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CC3Qsaam1Pu1Vs4NLYWY4IihlDoMJ8vMssd+Df0jvgQ=; b=Pt74LHloCrv5idvQWjPr+8K7iu
 wz+aYoDGaFAcUL/VDj6c5vxlxCRaTos6YCFwnNeabmbc7QQDZwDedRr2TKJkjRMesQ9FhsEfmFZAS
 ImsPgeFk5lH70D2o6IPmTLidpU5cmNZFyRoa+LvACptuss4aZCJbA9TPia4JQMf9RUtI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=CC3Qsaam1Pu1Vs4NLYWY4IihlDoMJ8vMssd+Df0jvgQ=; b=Fn+gbZUyQD2E
 FqJrw5H8mtESkWEDPjIr4ZR1M1kP85wj9ziN8pk9rwHCbwWiSu7P9sVQTZIwI9zwGEbYp5EqwV1fw
 zjthRHe4fwL3R48OGbhQphwbWnoINYUy4WwdGuG+j3/VLNYBw85P+zza7eUagwk+VCaJ5GlKATCtq
 rt7Cs=;
Received: from b227-249.smtp-out.eu-central-1.amazonses.com ([69.169.227.249])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.92.3)
 id 1n54U7-00067z-7z
 for v9fs-developer@lists.sourceforge.net; Wed, 05 Jan 2022 11:29:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=azn2h6rx57537id7wxygi2kd6pvhrgz3; d=eko-med.ro; t=1641382171;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=AjyUSLYFd9J2TTV0dM/ZgUpG1MwI2EALathvqOVmRdY=;
 b=QWVi12O00rIIqMn/5Zj2n7Wqn9p6RGwmjkNLuiYp2t+F3YKEzBPB7lA3sCI6AOEH
 Qr6bCIW7T8RrYar2uX0q5qBpg/nQyXnLqxUXn7eaXtJJs7X6HFK6GiRG5zZzg6sDRQq
 6f9BLavRV/wV+dlq8AytvkyUCSkEI1n+yBy5YRPU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1641382171;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=AjyUSLYFd9J2TTV0dM/ZgUpG1MwI2EALathvqOVmRdY=;
 b=QLDjPC97gFsvSEGos+6wcteUZma8BmzAnAY5JUDmHLoS5BiGY2K0462HEFUVL4u+
 69zDQe8Jti5Po4EKBdmQUhnhk2ckg/KU6Olyr2+MJxcivLHXlDU0tN/rpoRzrSGv2qc
 ovVVgi6tYIsJHHVfdg8MpIGliJbOw3tKyuuwCgck=
Message-ID: <0107017e2a00545b-6dee6d41-6fb2-4ce3-8a11-0427e32741aa-000000@eu-central-1.amazonses.com>
Date: Wed, 5 Jan 2022 11:29:31 +0000
From: Office <office@eko-med.ro>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.N8GLPrwMW4DEokEt/uX8R5Dj6lDs1dpqTZ0OFMrLAAo=:AmazonSES
X-SES-Outgoing: 2022.01.05-69.169.227.249
X-Spam-Score: 6.2 (++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Pretruile sunt negociabile [FarmersMarket-Top]
 [eko-med](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI4NyIsImE0YTliYjVhM2Y1MyIsZmFsc2Vd)
 Content analysis details:   (6.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
 blocklist [URIs: eko-med.ro]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.169.227.249 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: ekogroup.com.ro]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [69.169.227.249 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
 Colors in HTML
 2.5 URI_WP_HACKED_2        URI for compromised WordPress site, possible
 malware
X-Headers-End: 1n54U7-00067z-7z
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] FFP2, masti negre si teste covid
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
ck5EUnpPRzlqWjJOcll6UWlMQ0k0TnlJc0ltRTBZVGxpWWpWaE0yWTFNeUlzWm1Gc2MyVmQpCgpQ
RVNURSA1MDAgTUlMSU9BTkUgREUgUFJPRFVTRQpBTlRJLUNPVklEIDE5ClZBTkRVVEUgSU4gVE9B
VEEgRVVST1BBCgpPZmVydGEgbm9hc3RyYSBjdXByaW5kZToKLSBwcm9kdXNlIGFudGktY292aWQg
MTkKLSBkaXNwb3ppdGl2ZSBtZWRpY2FsZSBhdml6YXRlIE1TCi0gZ2FtYSBIaWd5ZW5pdW0KX19f
X18KT0ZGSUNFQEVLT0dST1VQLlJPCk9GRklDRUBFS08tTUVELlJPCis0IDA3NzEgNjc1IDI0MAoK
W2lhbWdlMV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50
PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05q
WjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJNE55SXNJbUUwWVRsaVlqVmhNMlkxTXlJc1ptRnNj
MlZkKQoKRUtPR1JPVVAuUk8gaXMgYW4gaW50ZXJuYXRpb25hbCBUUkFERSBjb21wYW55IHdpdGgg
YXJlYXMgb2YgYWN0aW9uIGluIGRpZmZlcmVudCByZWdpb25zIG9mIHRoZSB3b3JsZC4KQXNrIGZv
ciBhIHByaWNlIHF1b3RlIGFuZCB5b3Ugd2lsbCBiZSBhbnN3ZXJlZCBpbiBhIG1heGltdW0gb2Yg
NDggaG91cnMuCgpbdGVzdGUgY292aWRdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0
X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4
YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTROeUlzSWpaaU56TTRZ
VFEyWVdKaFlpSXNabUZzYzJWZCkKCjgsNSBsZWksIHR2YSB6ZXJvCk9SSUNFIFRFU1QgYW50aS1j
b3ZpZCAxOQoKW05lZ29jaWF6YSBwcmV0dXJpbGUgdGVsZWZvbmljXShodHRwczovL2Vrb2dyb3Vw
LmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9
V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlM
Q0k0TnlJc0lqWmlOek00WVRRMllXSmhZaUlzWm1Gc2MyVmQpCgpbTWFzY2EgbWVkaWNhbGFdKGh0
dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rp
b249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRS
ek9HOWpaMk5yWXpRaUxDSTROeUlzSWpaaU56TTRZVFEyWVdKaFlpSXNabUZzYzJWZCkKCjAsMTcg
bGVpK3R2YQpPUklDRSBNQVNDQSBtZWRpY2FsYQoKW05lZ29jaWF6YSBwcmV0dXJpbGUgdGVsZWZv
bmljXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJh
Y2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMw
WXpSck5EUnpPRzlqWjJOcll6UWlMQ0k0TnlJc0lqWmlOek00WVRRMllXSmhZaUlzWm1Gc2MyVmQp
CgpbbWFzY2EgbWVkaWNhbGFdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRl
ciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNY
TXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTROeUlzSWpaaU56TTRZVFEyWVdK
aFlpSXNabUZzYzJWZCkKCjE5IGxlaSArIHR2YQpPUklDRSBQUk9EVVMgY292aWQgMTkKCltOZWdv
Y2lhemEgcHJldHVyaWxlIHRlbGVmb25pY10oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBv
ZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJt
bHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJNE55SXNJalppTnpN
NFlUUTJZV0poWWlJc1ptRnNjMlZkKQoKW0NhcHR1cmHMhl9kZV9lY3Jhbl9kaW5fMjAyMi0wMS0w
NF9sYV8xNC4wMy4xOS1yZW1vdmViZy1wcmV2aWV3XShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9t
YWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdO
U3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0k0TnlJc0lq
WmlOek00WVRRMllXSmhZaUlzWm1Gc2MyVmQpCgowLDI1IGxlaSArIHR2YQpNYXN0aSBuZWdyZQoK
W05lZ29jaWF6YSBwcmV0dXJpbGUgdGVsZWZvbmljXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9t
YWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdO
U3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0k0TnlJc0lq
WmlOek00WVRRMllXSmhZaUlzWm1Gc2MyVmQpCgpbQ2FwdHVyYcyGX2RlX2VjcmFuX2Rpbl8yMDIy
LTAxLTA0X2xhXzE0LjA0LjE5LXJlbW92ZWJnLXByZXZpZXddKGh0dHBzOi8vZWtvZ3JvdXAuY29t
LnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUw
TXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTRO
eUlzSWpaaU56TTRZVFEyWVdKaFlpSXNabUZzYzJWZCkKCjEsNCBsZWkgKwpNYXN0aSBGRlAgMgoK
W05lZ29jaWF6YSBwcmV0dXJpbGUgdGVsZWZvbmljXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9t
YWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdO
U3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0k0TnlJc0lq
WmlOek00WVRRMllXSmhZaUlzWm1Gc2MyVmQpCgpbaW1hZ2U3XShodHRwczovL2Vrb2dyb3VwLmNv
bS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pF
ME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0k0
TnlJc0lqWmlOek00WVRRMllXSmhZaUlzWm1Gc2MyVmQpCgo4LDUgbGVpIHR2YSB6ZXJvClRlc3Rl
IDEgYnVjL2N1dGllCgpbTmVnb2NpYXphIHByZXR1cmlsZSB0ZWxlZm9uaWNdKGh0dHBzOi8vZWtv
Z3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2sm
ZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5y
WXpRaUxDSTROeUlzSWpaaU56TTRZVFEyWVdKaFlpSXNabUZzYzJWZCkKCltIaWdlbnl1bV0oaHR0
cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlv
bj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6
T0c5aloyTnJZelFpTENJNE55SXNJbUUwWVRsaVlqVmhNMlkxTXlJc1ptRnNjMlZkKQoKQ2VyZSBv
ZmVydGEgSGlnZW55dW0KCltOZWdvY2lhemEgcHJldHVyaWxlXShodHRwczovL2Vrb2dyb3VwLmNv
bS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pF
ME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0k0
TnlJc0ltRTBZVGxpWWpWaE0yWTFNeUlzWm1Gc2MyVmQpCgpbUHJvZHVzZSBjb3ZpZF0oaHR0cHM6
Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1j
bGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5
aloyTnJZelFpTENJNE55SXNJbUUwWVRsaVlqVmhNMlkxTXlJc1ptRnNjMlZkKQoKQ2VyZSBvZmVy
dGEgY29tcGxldGEKCltOZWdvY2lhemEgcHJldHVyaWxlXShodHRwczovL2Vrb2dyb3VwLmNvbS5y
bz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16
QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0k0TnlJ
c0ltRTBZVGxpWWpWaE0yWTFNeUlzWm1Gc2MyVmQpCgpbUHJvZHVzZSBtZWRpY2FsZV0oaHR0cHM6
Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1j
bGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5
aloyTnJZelFpTENJNE55SXNJbUUwWVRsaVlqVmhNMlkxTXlJc1ptRnNjMlZkKQoKT3JpY2UgYXBh
cmF0IG1lZGljYWwKCltDZXJlIG9mZXJ0YSBwZSBtYWlsXShodHRwczovL2Vrb2dyb3VwLmNvbS5y
bz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16
QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0k0TnlJ
c0ltRTBZVGxpWWpWaE0yWTFNeUlzWm1Gc2MyVmQpCgpbZWtvLW1lZF0oaHR0cHM6Ly9la29ncm91
cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRh
PVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFp
TENJNE55SXNJbUUwWVRsaVlqVmhNMlkxTXlJc1ptRnNjMlZkKQoKW2ZhY2Vib29rXShodHRwczov
L2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNs
aWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlq
WjJOcll6UWlMQ0k0TnlJc0ltRmhOMlV4T0RneU1HSTFZeUlzWm1Gc2MyVmQpIFtpbnN0YWdyYW1d
KGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZh
Y3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJy
TkRSek9HOWpaMk5yWXpRaUxDSTROeUlzSWpobE5UYzBNRFEzTkdGaE1DSXNabUZzYzJWZCkKW1Vu
c3Vic2NyaWJlXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9p
bnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1H
TmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0k0TnlJc0lqWTFZVEF3T1dVM1kyRmxNaUlzWm1G
c2MyVmQpIHwgW01hbmFnZSB5b3VyIHN1YnNjcmlwdGlvbl0oaHR0cHM6Ly9la29ncm91cC5jb20u
cm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBN
ekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJNE55
SXNJbUpqTlRrME9HVTNaak0yTWlJc1ptRnNjMlZkKQpfX19fX18Kb2ZmaWNlQGVrby1tZWQucm8K
KzQgMDc3MSA2NzUgMjQwCgpbRmFybWVyc01hcmtldC1Cb3R0b21dCgpbTWFpbFBvZXRdKGh0dHBz
Oi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249
Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9H
OWpaMk5yWXpRaUxDSTROeUlzSWpaaVpqZGtaRFkxT0dSak15SXNabUZzYzJWZCkKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1h
aWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
