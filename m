Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A7725444FFA
	for <lists+v9fs-developer@lfdr.de>; Thu,  4 Nov 2021 09:14:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1miXt4-0004pY-0g; Thu, 04 Nov 2021 08:14:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <0107017cea03052c-008190d0-7375-4095-b29b-800eea1e628a-000000@eu-central-1.amazonses.com>)
 id 1miXsv-0004pC-BA
 for v9fs-developer@lists.sourceforge.net; Thu, 04 Nov 2021 08:14:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nwr84tuMvv7VhPn3bte1P2ojICaFk42EmXHoULbLqS0=; b=P3fHpJFMCFycOB2odSnV7/Lpyr
 yBNK84JnqNX00qaOTgzWWD9NnIs1GrB+3HwhwlWcQz+chXl7GrDifLtF+YxY8Zdi2EKXqfR1Gtjnc
 YJ4UX0f/b4kBs+SaGO+I8FhbOHVu1EL3U00JRRR1Vh87M1EU1VK0uXUn/0TdSbe5M4VM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=Nwr84tuMvv7VhPn3bte1P2ojICaFk42EmXHoULbLqS0=; b=l3UHs9jEeBQj
 3f1OH4wm2fZsz3iGafBPNF7bFiGxInUSmhfutRcdYZje/CCSJnFw4QquhGJ3iH1INqFAolL/Y8Y5s
 uFdpbo/XGjzVrT9cL5xY/4gv4H6NfIsdE29M+qw6r6U9TRkBGxnM3dyEOrootzR5oncOd/7j7O3JZ
 rRadM=;
Received: from b227-249.smtp-out.eu-central-1.amazonses.com ([69.169.227.249])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.92.3)
 id 1miXss-0019QK-LH
 for v9fs-developer@lists.sourceforge.net; Thu, 04 Nov 2021 08:14:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=dh6xal75kxiwng2e7n6gpavtu5jej2gs; d=eko-promo.ro; t=1636013639;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=oKd1fTUcCTJFH/jc7O6oXi5m+Z/iTEbFHYeOc0SUZME=;
 b=a/LrUHYNo+EoyxryC+SFQ4R4xIc2FYhl0LwaOmzTvViVosh9A3i1njnFqa0bUap0
 RsYoJ1T+6lfH0v43vEblriUmgWnYVWJXmCcsImKNfH0iFB1dD9f9Z2AuHR0XwHKnJhD
 SfsoThwIVAzraRXn/1D3kUH+GwuHolkEWQqTUaFY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1636013639;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=oKd1fTUcCTJFH/jc7O6oXi5m+Z/iTEbFHYeOc0SUZME=;
 b=G9Cis7qMQOEGUMJrUvEJTmz1ZEgiXXq0orMVtvLSIEr0k6LPXvSqcva4HwaxDdAz
 McQA+pwKSvqXhNhXwIFcV1cR5jQb08tVqWWrYqiNZ1PD4B4P0cSRdx+gV206yyl6/gM
 em/BGPhimVCtLn2uNqkKwL2Ea6yZwfoFJf4CQQgw=
Message-ID: <0107017cea03052c-008190d0-7375-4095-b29b-800eea1e628a-000000@eu-central-1.amazonses.com>
Date: Thu, 4 Nov 2021 08:13:58 +0000
From: Office <office@eko-promo.ro>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.N8GLPrwMW4DEokEt/uX8R5Dj6lDs1dpqTZ0OFMrLAAo=:AmazonSES
X-SES-Outgoing: 2021.11.04-69.169.227.249
X-Spam-Score: 2.6 (++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  [Vizualizează asta în navigatorul tău.](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI1OCIsImQxOWVhYzkwZmU4MSIs
    [...] 
 
 Content analysis details:   (2.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: eko-promo.ro]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [69.169.227.249 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [69.169.227.249 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
  0.0 T_REMOTE_IMAGE         Message contains an external image
  2.5 URI_WP_HACKED_2        URI for compromised WordPress site, possible
                             malware
X-Headers-End: 1miXss-0019QK-LH
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Tot ce sa poate personaliza, noi putem face
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
Reply-To: Office <office@eko-promo.ro>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

W1ZpenVhbGl6ZWF6xIMgYXN0YSDDrm4gbmF2aWdhdG9ydWwgdMSDdS5dKGh0dHBzOi8vZWtvZ3Jv
dXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0
YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpR
aUxDSTFPQ0lzSW1ReE9XVmhZemt3Wm1VNE1TSXNabUZzYzJWZCkKCltGYXJtZXJzTWFya2V0LVRv
cF0KCltla28tcHJvbW9dKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZl
bmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZ
alEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTFPQ0lzSWpaa1pHTXpaRGt5WVRVd09T
SXNabUZzYzJWZCkKClRPVCBDRSBTRSBQRVJTT05BTElaRVpBCgpQRU5UUlUgQ09NUEFOSUEgVEEK
ClZBIFBVTkVNIExBIERJU1BPWklUSUU6Ci0gcHJvZHVzZSBkaW4gdG9hdGUgY2F0YWxvYWdlbGUg
cGlldGlpCi0gZ3JhZmljYQotIHBlcnNvbmFsaXphcmUKLSBsaXZyYXJlIGltZWRpYXRhIHBlbnRy
dSBjYW50aXRhdGkgbWFyaQpfX19fX18KCkNlcmUgbyBvZmVydGEgc2kgY29udmluZ2UtdGUhCgpb
Q2FwdHVyYcyGIGRlIGVjcmFuIGRpbiAyMDIxLTA5LTE2IGxhIDEzLjM5LjUwXShodHRwczovL2Vr
b2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNr
JmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJO
cll6UWlMQ0kxT0NJc0lqWmtaR016WkRreVlUVXdPU0lzWm1Gc2MyVmQpCltXaGF0c0FwcC1JbWFn
ZS0yMDIxLTA4LTA5LWF0LTE0LjE0LjM0XShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9l
dF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1s
eGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0kxT0NJc0lqWmtaR016
WkRreVlUVXdPU0lzWm1Gc2MyVmQpCgpvZmZpY2VAZWtvLXByb21vLnJvCnd3dy5la28tcHJvbW8u
cm8KCltVUzIwLVlMLmpwZ10oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVy
JmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hN
ellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJMU9DSXNJalprWkdNelpEa3lZVFV3
T1NJc1ptRnNjMlZkKQoKW0NFUkUgT0ZFUlRBIFBFIE1BSUxdKGh0dHBzOi8vZWtvZ3JvdXAuY29t
LnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUw
TXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTFP
Q0lzSWpaa1pHTXpaRGt5WVRVd09TSXNabUZzYzJWZCkKCltQQjIyLVlMLmpwZ10oaHR0cHM6Ly9l
a29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGlj
ayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloy
TnJZelFpTENJMU9DSXNJalprWkdNelpEa3lZVFV3T1NJc1ptRnNjMlZkKQoKW0NFUkUgT0ZFUlRB
IFBFIE1BSUxdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2lu
dD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdO
aloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTFPQ0lzSWpaa1pHTXpaRGt5WVRVd09TSXNabUZz
YzJWZCkKCltESjJTLVlMLmpwZ10oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91
dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2
Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJMU9DSXNJalprWkdNelpEa3lZ
VFV3T1NJc1ptRnNjMlZkKQoKW0NFUkUgT0ZFUlRBIFBFIE1BSUxdKGh0dHBzOi8vZWtvZ3JvdXAu
Y29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1X
ekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxD
STFPQ0lzSWpaa1pHTXpaRGt5WVRVd09TSXNabUZzYzJWZCkKCltla28tcHJvbW9dKGh0dHBzOi8v
ZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xp
Y2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpa
Mk5yWXpRaUxDSTFPQ0lzSWpaa1pHTXpaRGt5WVRVd09TSXNabUZzYzJWZCkKCltmYWNlYm9va10o
aHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFj
dGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJO
RFJ6T0c5aloyTnJZelFpTENJMU9DSXNJbVpsWVRnd1pUWTVZelUxTWlJc1ptRnNjMlZkKSBbaW5z
dGFncmFtXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9
dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpa
MnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0kxT0NJc0ltRmtNR05tT1dRNU56SmhOU0lzWm1Gc2My
VmQpCltEZXphYm9uYXJlXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXIm
ZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16
WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0kxT0NJc0ltTmpaR1U1WkdSa056YzFZ
aUlzWm1Gc2MyVmQpIHwgW0FkbWluaXN0cmVhesSDLcibaSBhYm9uYW1lbnR1bF0oaHR0cHM6Ly9l
a29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGlj
ayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloy
TnJZelFpTENJMU9DSXNJamcxWWprd1lXRTFZV00zTmlJc1ptRnNjMlZkKQoKb2ZmaWNlQGVrby1w
cm9tby5ybwp3d3cuZWtvLXByb21vLnJvCgpbRmFybWVyc01hcmtldC1Cb3R0b21dCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBt
YWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8v
bGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
