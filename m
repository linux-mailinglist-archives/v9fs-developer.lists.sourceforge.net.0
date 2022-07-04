Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 214715658FC
	for <lists+v9fs-developer@lfdr.de>; Mon,  4 Jul 2022 16:54:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o8NTT-0000NU-Qj; Mon, 04 Jul 2022 14:54:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <01070181c9b4deac-e3382132-bb83-4af2-9735-784c66b7db46-000000@eu-central-1.amazonses.com>)
 id 1o8NTS-0000NN-D7
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 14:54:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2qOzYirhv4CLI9DI3JagyMqwC0LWnMQtv0yQWVE56K4=; b=Iv3EXh0miNl2rERE/6dBo+gndo
 7i8c1XxUXuB/UQF3QkRGcJewj/c25csVUFw5dvj1rF/pqKktJQyaxwBLakUz/gt6cm/gyjrktXfa8
 ZTJZ/O3pmKSkEZfKeEPFCuGoEgouBc8n4dQZ+MqrienetV6PUB+l4Zi/L4aMJy9VT2Jk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=2qOzYirhv4CLI9DI3JagyMqwC0LWnMQtv0yQWVE56K4=; b=eG/cUhspByJF
 MYDuBaEjzSaidoOw7MCpuRG9CTJx04wUagMkYmI+fXTl7hp/Sl962nBsmYyo7MFrcXJJw+Y3d+QY9
 ArdPGJNUH3QWLYzEN6q+QyTrgd4tq5frFOeUHohAXjCRzP/8sY8OMLdWldADqGb5QY+aBLnhYKNdT
 ExxK8=;
Received: from b228-111.smtp-out.eu-central-1.amazonses.com ([69.169.228.111])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.94.2)
 id 1o8NTN-0076XX-LE
 for v9fs-developer@lists.sourceforge.net; Mon, 04 Jul 2022 14:54:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=6dycfttairtwnmbdpqj6xnhm6vx4dept; d=eko-trading.com;
 t=1656946482;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=tWiVSl/21T/5llJqrWXchBMLQXcoxZY6pe8xMMnkJ4A=;
 b=E0VLb+kVME8M4FJLfOGRXBnfL6hF0fgSyU5Gb0JDN/HJR9rAbuabJMhbkaEQUeXs
 W7yYxV+vvcBPeNa+OLICpQey5SMnnhaic+LU6HYvvttQXABRZwZH8i/FcwTGLj8Dvjm
 K7RrxoTL+AUsvJqcoCKUaaBHubC6APvt13SSNz4Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1656946482;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=tWiVSl/21T/5llJqrWXchBMLQXcoxZY6pe8xMMnkJ4A=;
 b=c7ohWpGedsNe0l6JCTew9YY5u8FgkWcKoZwJuFd7CmRmffF7l8jkqriF59PYVsOF
 zrkIQED+AQpL075T+7it87KzOyS1DprLQqrTRHjH0PrU0WIFCKFoS+xLarzqzWgu0rJ
 ILTv9G1KMroLV5iZluAECniODMKyB9sn/qJ6v9+0=
Message-ID: <01070181c9b4deac-e3382132-bb83-4af2-9735-784c66b7db46-000000@eu-central-1.amazonses.com>
Date: Mon, 4 Jul 2022 14:54:42 +0000
From: Office <office@eko-trading.com>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.N8GLPrwMW4DEokEt/uX8R5Dj6lDs1dpqTZ0OFMrLAAo=:AmazonSES
X-SES-Outgoing: 2022.07.04-69.169.228.111
X-Spam-Score: 4.2 (++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  [Vizualizează asta în navigatorul tău.](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCIxNDMiLCIzMDJkMjFlYjM3MDgi
    [...] 
 
 Content analysis details:   (4.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [69.169.228.111 listed in list.dnswl.org]
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: ekogroup.com.ro]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [69.169.228.111 listed in wl.mailspike.net]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
  2.5 URI_WP_HACKED_2        URI for compromised WordPress site, possible
                             malware
X-Headers-End: 1o8NTN-0076XX-LE
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Commodities in Romania
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
Reply-To: Office <office@eko-trading.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

W1ZpenVhbGl6ZWF6xIMgYXN0YSDDrm4gbmF2aWdhdG9ydWwgdMSDdS5dKGh0dHBzOi8vZWtvZ3Jv
dXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0
YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpR
aUxDSXhORE1pTENJek1ESmtNakZsWWpNM01EZ2lMR1poYkhObFhRKQoKW0Zhcm1lcnNNYXJrZXQt
VG9wXQoKW2xvZ29fZWtvZ3JvdXAtcmVtb3ZlYmctcHJldmlld10oaHR0cHM6Ly9la29ncm91cC5j
b20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6
RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJ
eE5ETWlMQ0k1TldFMU5XTXlNRGN4TmpjaUxHWmhiSE5sWFEpCgpbQ2FwdHVyYcyGIGRlIGVjcmFu
IGRpbiAyMDIyLTA3LTA0IGxhIDEzLjEzLjUxXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWls
cG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dp
Ym1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TkRNaUxDSXdP
RGhrTVdRMU5HTmpOV1VpTEdaaGJITmxYUSkKCkFzIHlvdSB3ZWxsIGtub3csUm9tYW5pYSBpcyBh
IGNvdW50cnkgd2l0aCBleHRyZW1lbHkgbWFueXJlc291cmNlc2FuZCB3ZSB3YW50IHRvIGRldmVs
b3AgbG9uZy10ZXJtIHBhcnRuZXJzaGlwcyB3aXRoIGNvdW50cmllcyB0aGF0IGNhbiBoZWxwIGRl
dmVsb3AgUm9tYW5pYW4gZXhwb3J0cy4KT3VyIGNvbXBhbnkgaXMgb25lIG9mIHRoZSBsZWFkZXJz
IG9uIHRoZSB0cmFkZSBtYXJrZXQgaW4gUm9tYW5pYSBhbmQgd2Ugd2FudCB0byBkZXZlbG9wIGxv
bmctdGVybSBwYXJ0bmVyc2hpcHMgd2l0aCBhcyBtYW55IGNvdW50cmllcyBpbiB0aGUgd29ybGQg
YXMgcG9zc2libGUuCkluIHRoaXMgc2Vuc2UsIHdlIHdhbnQgdG8gaW5mb3JtIHlvdSBvZiBvdXIg
b2ZmZXJzIG9mIFJvbWFuaWFuIHByb2R1Y3RzIGF2YWlsYWJsZSBpbW1lZGlhdGVseS4KCkVLTyBU
UkFERSBCVVNJTkVTUwpfX19fX19fCgpTdHJlZXQgRW1pbCBQYW5ncmF0dGksIG5vLjEwICs0IDA3
NTcgNzcgMjggMjgKb2ZmaWNlQGVrby10cmFkaW5nLmNvbQoKW2ZhY2Vib29rXShodHRwczovL2Vr
b2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNr
JmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJO
cll6UWlMQ0l4TkRNaUxDSXdZVFJtT0RNeU1tTmhOamtpTEdaaGJITmxYUSkgW2luc3RhZ3JhbV0o
aHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFj
dGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJO
RFJ6T0c5aloyTnJZelFpTENJeE5ETWlMQ0ppTkRSbU4yVmpOR1E0WW1NaUxHWmhiSE5sWFEpCltV
bnNjcmliZV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50
PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05q
WjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5ETWlMQ0kzTXpNNVpUQmlaalJpTVRNaUxHWmhi
SE5sWFEpIHwgTWFuYWdlIHlvdXIgc3Vic2NyaXB0aW9uW2xdKGh0dHBzOi8vZWtvZ3JvdXAuY29t
LnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUw
TXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhO
RE1pTENJeE5qSm1aV0prWlRjME5qRWlMR1poYkhObFhRKQpBZGQgeW91ciBlbWFpbCBhZHJlc3Mg
aGVyZSEKX19fX19fXwoKQ29weXJpZ2h0IMKpIDIwMjIgd3d3LmVrb2dyb3VwLnJvLCBBbGwgcmln
aHRzIHJlc2VydmVkLgoKW0Zhcm1lcnNNYXJrZXQtQm90dG9tXQoKW01haWxQb2V0XShodHRwczov
L2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNs
aWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlq
WjJOcll6UWlMQ0l4TkRNaUxDSTBaalkwTjJJM1lUZzVaREFpTEdaaGJITmxYUSkKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1h
aWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
