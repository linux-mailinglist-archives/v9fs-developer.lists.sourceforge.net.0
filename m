Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB084C3A00
	for <lists+v9fs-developer@lfdr.de>; Fri, 25 Feb 2022 00:57:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nNNzO-00077r-Qv; Thu, 24 Feb 2022 23:57:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <0107017f2e2b080b-2243ed3b-9bde-4196-b290-7af7cc50e1b2-000000@eu-central-1.amazonses.com>)
 id 1nNNzM-00077l-O8
 for v9fs-developer@lists.sourceforge.net; Thu, 24 Feb 2022 23:57:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=f3IXNZMx/zBGQQqeDn5JUHTpLihB8oNfnsSGsWe6a+8=; b=IVksdLDnOHw0sAdzJo+lJC9Xf0
 aEhudf8/ADS4uIHuPFjJIc/hsSPUTvzK75JD3+oNNdz8NUrbk3fc2r4BmFek0P2bxF/jdqvaz0cMD
 nTHvYnS53qJ94W/TZgXAZ4NryDH3xjz9EF+pV6l0knTTG6Cko/87FtjMrr6FUZ9D/B50=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=f3IXNZMx/zBGQQqeDn5JUHTpLihB8oNfnsSGsWe6a+8=; b=gRaqJzW1xVjg
 QoFCBM1pjDTFrsGvhpyiz8bDGEtm7qB6ebedlColynCK8YcYDtq2Rv0rkZXl9+xC6nBDUQoWNDM2M
 hVLMGGE9NQ02qJLjQwLGiIzV/pVAyREBqINoeqa2TddWbQgWuL/XlUdvO5+GfMQHfzHKN7EZZEdtH
 U5BWk=;
Received: from b228-111.smtp-out.eu-central-1.amazonses.com ([69.169.228.111])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.94.2)
 id 1nNNzK-00EHfZ-3M
 for v9fs-developer@lists.sourceforge.net; Thu, 24 Feb 2022 23:57:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=azn2h6rx57537id7wxygi2kd6pvhrgz3; d=eko-med.ro; t=1645747046;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=llmvI9dhq+x4pvMqEuNRqGxZ91K3Vs7NagQpLn6QZ7g=;
 b=SQpSd0bf5wo0KYzenCo7e3DB6gCRIcYmUEqNJvfaoR4wfZ7JQ36oZRg83EGCEN6e
 M5QaBCbXoGEHRrlYQB94UFSGOM08UGiEuXV2JkrMLfY1Idae/jIklVrjGeQFcKxTQKc
 q7Z8ReDeQmq5bbV+bWcQ0sPIkKCVXo2IAOxtWfms=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1645747046;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=llmvI9dhq+x4pvMqEuNRqGxZ91K3Vs7NagQpLn6QZ7g=;
 b=UcF1El0IQzwzRJWVklgTIPoCpqDqYpvzgu13xtwjgYQexfn3J7AhxsAg65LJTJpZ
 L1FgxRNA3ZYgCq6ShiroJMw7J4bWx46XP3GFDpXo8qnFhlkFzdrqwjWnBCFHb9JOMA3
 SVhPGKrjEvhncXOfFDmLp/xBuNFVywn8FCiY4zEg=
Message-ID: <0107017f2e2b080b-2243ed3b-9bde-4196-b290-7af7cc50e1b2-000000@eu-central-1.amazonses.com>
Date: Thu, 24 Feb 2022 23:57:26 +0000
From: Office <office@eko-med.ro>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.N8GLPrwMW4DEokEt/uX8R5Dj6lDs1dpqTZ0OFMrLAAo=:AmazonSES
X-SES-Outgoing: 2022.02.24-69.169.228.111
X-Spam-Score: 6.2 (++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Pretruile sunt negociabile [FarmersMarket-Top]
 [eko-med](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCIxMTEiLCI3YzAyOGZlMzlkYzEiLGZhbHNlXQ)
 Content analysis details:   (6.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.169.228.111 listed in list.dnswl.org]
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: ekogroup.com.ro]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [69.169.228.111 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
 Colors in HTML 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 2.5 URI_WP_HACKED_2        URI for compromised WordPress site, possible
 malware
X-Headers-End: 1nNNzK-00EHfZ-3M
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] 6.9 lei teste covid 19
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
ck5EUnpPRzlqWjJOcll6UWlMQ0l4TVRFaUxDSTNZekF5T0dabE16bGtZekVpTEdaaGJITmxYUSkK
ClBFU1RFIDUwMCBNSUxJT0FORSBERSBQUk9EVVNFCkFOVEktQ09WSUQgMTkKVkFORFVURSBJTiBU
T0FUQSBFVVJPUEEKCk9mZXJ0YSBub2FzdHJhIGN1cHJpbmRlOgotIHByb2R1c2UgYW50aS1jb3Zp
ZCAxOQotIGRpc3Bveml0aXZlIG1lZGljYWxlIGF2aXphdGUgTVMKLSBnYW1hIEhpZ3llbml1bQpf
X19fXwpPRkZJQ0VARUtPR1JPVVAuUk8KT0ZGSUNFQEVLTy1NRUQuUk8KKzQgMDc3MSA2NzUgMjQw
CgpbaWFtZ2UxXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9p
bnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1H
TmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TVRFaUxDSTNZekF5T0dabE16bGtZekVpTEda
aGJITmxYUSkKCkVLT0dST1VQLlJPIGlzIGFuIGludGVybmF0aW9uYWwgVFJBREUgY29tcGFueSB3
aXRoIGFyZWFzIG9mIGFjdGlvbiBpbiBkaWZmZXJlbnQgcmVnaW9ucyBvZiB0aGUgd29ybGQuCkFz
ayBmb3IgYSBwcmljZSBxdW90ZSBhbmQgeW91IHdpbGwgYmUgYW5zd2VyZWQgaW4gYSBtYXhpbXVt
IG9mIDQ4IGhvdXJzLgoKW3Rlc3RlIGNvdmlkXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWls
cG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dp
Ym1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TVRFaUxDSXlP
VGN3T0RFNFpEaG1PVFVpTEdaaGJITmxYUSkKCjYsOSBsZWksIHR2YSB6ZXJvCk9SSUNFIFRFU1Qg
YW50aS1jb3ZpZCAxOQoKW05lZ29jaWF6YSBwcmV0dXJpbGUgdGVsZWZvbmljXShodHRwczovL2Vr
b2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNr
JmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJO
cll6UWlMQ0l4TVRFaUxDSXlPVGN3T0RFNFpEaG1PVFVpTEdaaGJITmxYUSkKCltNYXNjYSBtZWRp
Y2FsYV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRy
YWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJz
MFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE1URWlMQ0l5T1Rjd09ERTRaRGhtT1RVaUxHWmhiSE5s
WFEpCgowLDE3IGxlaSt0dmEKT1JJQ0UgTUFTQ0EgbWVkaWNhbGEKCltOZWdvY2lhemEgcHJldHVy
aWxlIHRlbGVmb25pY10oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVu
ZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellq
UTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE1URWlMQ0l5T1Rjd09ERTRaRGhtT1RV
aUxHWmhiSE5sWFEpCgpbbWFzY2EgbWVkaWNhbGFdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21h
aWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05T
d2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhNVEVpTENJ
eU9UY3dPREU0WkRobU9UVWlMR1poYkhObFhRKQoKMTkgbGVpICsgdHZhCk9SSUNFIFBST0RVUyBj
b3ZpZCAxOQoKW05lZ29jaWF6YSBwcmV0dXJpbGUgdGVsZWZvbmljXShodHRwczovL2Vrb2dyb3Vw
LmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9
V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlM
Q0l4TVRFaUxDSXlPVGN3T0RFNFpEaG1PVFVpTEdaaGJITmxYUSkKCltDYXB0dXJhzIZfZGVfZWNy
YW5fZGluXzIwMjItMDEtMDRfbGFfMTQuMDMuMTktcmVtb3ZlYmctcHJldmlld10oaHR0cHM6Ly9l
a29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGlj
ayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloy
TnJZelFpTENJeE1URWlMQ0l5T1Rjd09ERTRaRGhtT1RVaUxHWmhiSE5sWFEpCgowLDI1IGxlaSAr
IHR2YQpNYXN0aSBuZWdyZQoKW05lZ29jaWF6YSBwcmV0dXJpbGUgdGVsZWZvbmljXShodHRwczov
L2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNs
aWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlq
WjJOcll6UWlMQ0l4TVRFaUxDSXlPVGN3T0RFNFpEaG1PVFVpTEdaaGJITmxYUSkKCltDYXB0dXJh
zIZfZGVfZWNyYW5fZGluXzIwMjItMDEtMDRfbGFfMTQuMDQuMTktcmVtb3ZlYmctcHJldmlld10o
aHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFj
dGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJO
RFJ6T0c5aloyTnJZelFpTENJeE1URWlMQ0l5T1Rjd09ERTRaRGhtT1RVaUxHWmhiSE5sWFEpCgox
LDQgbGVpICsKTWFzdGkgRkZQIDIKCltOZWdvY2lhemEgcHJldHVyaWxlIHRlbGVmb25pY10oaHR0
cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlv
bj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6
T0c5aloyTnJZelFpTENJeE1URWlMQ0l5T1Rjd09ERTRaRGhtT1RVaUxHWmhiSE5sWFEpCgpbaW1h
Z2U3XShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJh
Y2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMw
WXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TVRFaUxDSXlPVGN3T0RFNFpEaG1PVFVpTEdaaGJITmxY
USkKCjYsOSBsZWkgdHZhIHplcm8KVGVzdGUgMSBidWMvY3V0aWUKCltOZWdvY2lhemEgcHJldHVy
aWxlIHRlbGVmb25pY10oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVu
ZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellq
UTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE1URWlMQ0l5T1Rjd09ERTRaRGhtT1RV
aUxHWmhiSE5sWFEpCgpbSGlnZW55dW1dKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0
X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4
YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhNVEVpTENJM1l6QXlP
R1psTXpsa1l6RWlMR1poYkhObFhRKQoKQ2VyZSBvZmVydGEgSGlnZW55dW0KCltOZWdvY2lhemEg
cHJldHVyaWxlXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9p
bnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1H
TmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TVRFaUxDSTNZekF5T0dabE16bGtZekVpTEda
aGJITmxYUSkKCltQcm9kdXNlIGNvdmlkXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9l
dF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1s
eGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TVRFaUxDSTNZekF5
T0dabE16bGtZekVpTEdaaGJITmxYUSkKCkNlcmUgb2ZlcnRhIGNvbXBsZXRhCgpbTmVnb2NpYXph
IHByZXR1cmlsZV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBv
aW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBN
R05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE1URWlMQ0kzWXpBeU9HWmxNemxrWXpFaUxH
WmhiSE5sWFEpCgpbUHJvZHVzZSBtZWRpY2FsZV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFp
bHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3
aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE1URWlMQ0kz
WXpBeU9HWmxNemxrWXpFaUxHWmhiSE5sWFEpCgpPcmljZSBhcGFyYXQgbWVkaWNhbAoKW0NlcmUg
b2ZlcnRhIHBlIG1haWxdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZl
bmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZ
alEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhNVEVpTENJM1l6QXlPR1psTXpsa1l6
RWlMR1poYkhObFhRKQoKW2Vrby1tZWRdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0
X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4
YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhNVEVpTENJM1l6QXlP
R1psTXpsa1l6RWlMR1poYkhObFhRKQoKW2ZhY2Vib29rXShodHRwczovL2Vrb2dyb3VwLmNvbS5y
bz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16
QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TVRF
aUxDSXhOalkyTWpsaVpqRXhZemdpTEdaaGJITmxYUSkgW2luc3RhZ3JhbV0oaHR0cHM6Ly9la29n
cm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZk
YXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZ
elFpTENJeE1URWlMQ0prWm1WaFpEYzBNakU0WW1JaUxHWmhiSE5sWFEpCltVbnN1YnNjcmliZV0o
aHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFj
dGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJO
RFJ6T0c5aloyTnJZelFpTENJeE1URWlMQ0kwWmpOak9XSTNNV1E1TVRBaUxHWmhiSE5sWFEpIHwg
W01hbmFnZSB5b3VyIHN1YnNjcmlwdGlvbl0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBv
ZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJt
bHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE1URWlMQ0prT1Rs
alkySTBOVEl5WTJJaUxHWmhiSE5sWFEpCl9fX19fXwpvZmZpY2VAZWtvLW1lZC5ybworNCAwNzcx
IDY3NSAyNDAKCltGYXJtZXJzTWFya2V0LUJvdHRvbV0KCltNYWlsUG9ldF0oaHR0cHM6Ly9la29n
cm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZk
YXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZ
elFpTENJeE1URWlMQ0kxTnpBNE0yVmxaV0l6TW1VaUxHWmhiSE5sWFEpCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5n
IGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
