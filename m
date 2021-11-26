Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 866D945ECEF
	for <lists+v9fs-developer@lfdr.de>; Fri, 26 Nov 2021 12:48:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mqZiT-0004PQ-DT; Fri, 26 Nov 2021 11:48:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <0107017d5c133639-dea58815-2382-4de0-a025-6d148d96ec8c-000000@eu-central-1.amazonses.com>)
 id 1mqZiR-0004PK-Uo
 for v9fs-developer@lists.sourceforge.net; Fri, 26 Nov 2021 11:48:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dkvHs+XKSb71U2Vk3Hv1A1TfedJ6JMZpF0IRKAJ3JIc=; b=IfwxcHUQOx8U03258oxEp8XoRR
 lRmu3jd5jR/TuVcGfnEcbL8Yj88q9SKBDgNH7BsJJO+fRkLXeYUJsYllsQ9ZmA49O92tMu9E/PBMj
 HJo4a60xy6sCRakIuBlMjMBFYQ3q4wy+gaNN9MERkJ36pw2cMV8UuMMD8syxzR7jtDmw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=dkvHs+XKSb71U2Vk3Hv1A1TfedJ6JMZpF0IRKAJ3JIc=; b=lTS+M/5zEBho
 Lw3W5+GuwkxRhATKu8y4/4d1cjY5KHMx2sh3sSMsAUhMjlFVl7+ZaBq0+mfwZ6AJwV+TECqGIeEfg
 yde13aQGRd+hsrYBsuIi+oZXPDQvBrhWXxY//6pT5Lz0ZIPkc0IkJuP1QgPZf8LtM+UuOQpSh+jvg
 YSVoI=;
Received: from b228-111.smtp-out.eu-central-1.amazonses.com ([69.169.228.111])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.92.3)
 id 1mqZiQ-00A2Db-He
 for v9fs-developer@lists.sourceforge.net; Fri, 26 Nov 2021 11:48:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=otmemashwe6jj5fkh3u4i6fgtdu3soy2; d=eko-atelier.ro; t=1637927302;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=NWU5NeT8YO9iZnlkoi6vmAfjGRekU95nZUh5Rrglum4=;
 b=QFqevdTv7KOr91ixKX/hcEb8ouh74FgJ58xWBZEFeqAgZPesdBnM7d3sNAq+8bvl
 5jlQCBj/WyxPDtKEYpnr2tzHGVVFlulJ05gi+cHSVfC71GMvVudZVDDrEp7OgAFBOE8
 /XqkJhHUX1klhJiNNLxuH88pPw1l5JxcbFt/7NKI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1637927302;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=NWU5NeT8YO9iZnlkoi6vmAfjGRekU95nZUh5Rrglum4=;
 b=DKR5RZzi4XlAigr11kBMLcI8d05lpRk9vkNTBPznL0wZbDX4UTT1/v7mPnuV6gKl
 7Qvu12En5E+XzY5wdv6zAtcUPxu/8lkxxEEiB3YOMK05Pb+8nVDrcXwoilutJVFHo61
 BNB7ZPZ7j2DDj1rVCac2R2ovKnn4TP6owlxLE+Bo=
Message-ID: <0107017d5c133639-dea58815-2382-4de0-a025-6d148d96ec8c-000000@eu-central-1.amazonses.com>
Date: Fri, 26 Nov 2021 11:48:22 +0000
From: Office <office@eko-atelier.ro>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.N8GLPrwMW4DEokEt/uX8R5Dj6lDs1dpqTZ0OFMrLAAo=:AmazonSES
X-SES-Outgoing: 2021.11.26-69.169.228.111
X-Spam-Score: 4.3 (++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: [View this in your
 browser.](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI3NSIsIjU3OGE2MjlkNzJmMSIsZmFsc2Vd)
 [FarmersMarket-Top] 
 Content analysis details:   (4.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.169.228.111 listed in list.dnswl.org]
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: ekogroup.com.ro]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [69.169.228.111 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
 Colors in HTML
 2.5 URI_WP_HACKED_2        URI for compromised WordPress site, possible
 malware
X-Headers-End: 1mqZiQ-00A2Db-He
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Producatori de uniforme
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
Reply-To: Office <office@eko-atelier.ro>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

W1ZpZXcgdGhpcyBpbiB5b3VyIGJyb3dzZXIuXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWls
cG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dp
Ym1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0kzTlNJc0lqVTNP
R0UyTWpsa056Sm1NU0lzWm1Gc2MyVmQpCgpbRmFybWVyc01hcmtldC1Ub3BdCgpbZWtvLWF0ZWxp
ZXItYnVuXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9
dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpa
MnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0kzTlNJc0lqYzRNMlkzTjJFeVltTTJZU0lzWm1Gc2My
VmQpCgpDUkVBWkEtVEkgVU5JRk9STUEgQ1UgTk9JCklUSSBHQVJBTlRBTSBDRUwgTUFJIE1JQyBQ
UkVUIGxhCi0gdW5pZm9ybWUgbWVkaWNhbGUKLSB1bmlmb3JtZSBILk8uUi5FLkMuQQotIHVuaWZv
cm1lIG1pbGl0YXJlCi0gdW5pZm9ybWUgY29ycG9yYXRlCi0gcHJvZHVzZSBkZSBwcm90ZWN0aWEg
bXVuY2lpCl9fX18KQ2VyZSBvIGNvdGF0aWUgZGUgcHJldCBzaSBjb252aW5nZS10ZSEKQ0FOVElU
QVRJIE1JTklNRSAxMDAgQlVDL01PREVMCgpbQU1BIExpc3RzX0lHRF0KCk9GRklDRUBFS08tQVRF
TElFUi5STwp3d3cuZWtvLWF0ZWxpZXIucm8KCltDYXB0dXJhzIYgZGUgZWNyYW4gZGluIDIwMjEt
MDktMTYgbGEgMTMuMTMuMjddKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRl
ciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNY
TXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTNOU0lzSW1VNFlXRXlaVEprWVRj
NE5TSXNabUZzYzJWZCkKCltVbmlmb3JtZSBNRURJQ0FMRV0oaHR0cHM6Ly9la29ncm91cC5jb20u
cm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBN
ekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJM05T
SXNJbVU0WVdFeVpUSmtZVGM0TlNJc1ptRnNjMlZkKQoKW0NhcHR1cmHMhiBkZSBlY3JhbiBkaW4g
MjAyMS0wOS0xNiBsYSAxMy4xMy4zM10oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRf
cm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhh
V0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJM05TSXNJalUzTURrNU9E
STVORGxpTUNJc1ptRnNjMlZkKQoKW1VuaWZvcm1lIEguTy5SLkUuQy5BXShodHRwczovL2Vrb2dy
b3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRh
dGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6
UWlMQ0kzTlNJc0lqVTNNRGs1T0RJNU5EbGlNQ0lzWm1Gc2MyVmQpCgpbQ2FwdHVyYcyGIGRlIGVj
cmFuIGRpbiAyMDIxLTA5LTE2IGxhIDEzLjEzLjQwXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9t
YWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdO
U3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0kzTlNJc0lt
TXdaVGd4TTJaall6SmtNU0lzWm1Gc2MyVmQpCgpbVW5pZm9ybWUgTUlMSVRBUkVdKGh0dHBzOi8v
ZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xp
Y2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpa
Mk5yWXpRaUxDSTNOU0lzSW1Nd1pUZ3hNMlpqWXpKa01TSXNabUZzYzJWZCkKCltmYXZpY29uXQoK
W2ZhY2Vib29rXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9p
bnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1H
TmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0kzTlNJc0lqTTROakJrTVdSa1lqZGtOQ0lzWm1G
c2MyVmQpIFtpbnN0YWdyYW1dKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRl
ciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNY
TXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSTNOU0lzSW1NM01UWTRZVEptWkdR
eE5pSXNabUZzYzJWZCkKW1Vuc3Vic2NyaWJlXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWls
cG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dp
Ym1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0kzTlNJc0ltSTFO
amM0TVRsa05HSXpOaUlzWm1Gc2MyVmQpIHwgW01hbmFnZSB5b3VyIHN1YnNjcmlwdGlvbl0oaHR0
cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlv
bj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6
T0c5aloyTnJZelFpTENJM05TSXNJamRqWm1ZMU1HWmpOR0U1TXlJc1ptRnNjMlZkKQpBZGQgeW91
ciBwb3N0YWwgYWRkcmVzcyBoZXJlIQoKT0ZGSUNFQEVLTy1BVEVMSUVSLlJPCnd3dy5la28tYXRl
bGllci5ybwoKW0Zhcm1lcnNNYXJrZXQtQm90dG9tXQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMt
ZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdl
Lm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
