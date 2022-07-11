Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B869E570635
	for <lists+v9fs-developer@lfdr.de>; Mon, 11 Jul 2022 16:52:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oAulW-0002sI-RH; Mon, 11 Jul 2022 14:52:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <01070181edbe9e3a-0e3b01f7-2b22-4df0-a0c8-7ba8f58437c0-000000@eu-central-1.amazonses.com>)
 id 1oAulV-0002rs-Vr
 for v9fs-developer@lists.sourceforge.net; Mon, 11 Jul 2022 14:52:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MUjhlsK8myNzYCHRlqVSW8f0TgVOV36z6AMXyCGc0Go=; b=BWXeFq+UjOS2nJaB7/E4RDzjLW
 exKxIA8mHKkOi986LqQV32ltPbo3FvXZLW6ArnAptnYEhI/dY4JMyKwP1l9Ne9U5vVC1hh2Q3O2Vt
 15MJFjljPCdiiPqFwxDUPGUdvxaBfxTJrho9/feceCFQnc9BZRSVJA96mw/aWM4oG5nI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=MUjhlsK8myNzYCHRlqVSW8f0TgVOV36z6AMXyCGc0Go=; b=G5KPHuqrhpgI
 nQ1pDgZrgmrVp4Zwj3KP4V7VsFvXYS+T6DNTmaTvB4iwl5a4UsPR1cs1NLv4IDOasjhWXZieO6T16
 JxoyjexWWYtAY7CXpPo/FLCbDVsx28eF5/mBUA5kJPmGghwlROBofUd/K8YunPG1RMY8KYREH2RwO
 b3cP4=;
Received: from b227-249.smtp-out.eu-central-1.amazonses.com ([69.169.227.249])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.94.2)
 id 1oAulR-00Ds0n-2S
 for v9fs-developer@lists.sourceforge.net; Mon, 11 Jul 2022 14:52:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=6dycfttairtwnmbdpqj6xnhm6vx4dept; d=eko-trading.com;
 t=1657551101;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=lNnbKQcQdzHPoZ0EYbvy2U2gweD1r9bEZI4b8h6dAPM=;
 b=bEzsowXOgzY32zx6qrRws4sPgdvNx720n8otjcfQJ1jHTEd0BI9qL5Vu5lR+A6BH
 sKUtElBTKr4QXnBaqgpPTWeYCxQhadOeODc9WvYGKhN8hKjL7292EcY/3kjk8UGjmmy
 aK7qLUnNPzdos7w3uTBaQs6GKrSfJUCddMg9lOx0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1657551101;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=lNnbKQcQdzHPoZ0EYbvy2U2gweD1r9bEZI4b8h6dAPM=;
 b=LZQpsPAcubleDkPIaOTZHo0/Wk29LNWd98vqzsnwR7XWf4OjM0Bj13PipdG2QgU+
 YhJ9kyagCs/4zFBnPW3FMHQY4S09joYerTwL255JH0AX4T5MDmARNIkrXX8f6esqjK6
 4YJExFq+7uUnw1YAwtjRBSDo0TG2PA2Kb8iRlq2s=
Message-ID: <01070181edbe9e3a-0e3b01f7-2b22-4df0-a0c8-7ba8f58437c0-000000@eu-central-1.amazonses.com>
Date: Mon, 11 Jul 2022 14:51:41 +0000
From: Office <office@eko-trading.com>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.N8GLPrwMW4DEokEt/uX8R5Dj6lDs1dpqTZ0OFMrLAAo=:AmazonSES
X-SES-Outgoing: 2022.07.11-69.169.227.249
X-Spam-Score: 5.9 (+++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  [Vizualizează asta în navigatorul tău.](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCIxNDkiLCIwODE1MzdhMTY2MjMi
    [...] 
 
 Content analysis details:   (5.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [69.169.227.249 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: ekogroup.com.ro]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
  2.2 URI_WP_HACKED_2        URI for compromised WordPress site, possible
                             malware
X-Headers-End: 1oAulR-00Ds0n-2S
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] 335 euro/to wheat from Romania
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
aUxDSXhORGtpTENJd09ERTFNemRoTVRZMk1qTWlMR1poYkhObFhRKQoKW0Zhcm1lcnNNYXJrZXQt
VG9wXQoKW0NhcHR1cmHMhl9kZV9lY3Jhbl9kaW5fMjAyMi0wNy0wNV9sYV8xNC4zOC4zMy1yZW1v
dmViZy1wcmV2aWV3XShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5k
cG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpR
ME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TkRraUxDSmlZak5oTmpWak1EUmtObU1p
TEdaaGJITmxYUSkKCltDYXB0dXJhzIYgZGUgZWNyYW4gZGluIDIwMjItMDctMDUgbGEgMDguNTgu
MDNdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFj
ayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZ
elJyTkRSek9HOWpaMk5yWXpRaUxDSXhORGtpTENJd05EbGpOVGN6T0RkbVpqQWlMR1poYkhObFhR
KQoKW0NhcHR1cmHMhiBkZSBlY3JhbiBkaW4gMjAyMi0wNy0wNiBsYSAwOS4zOC41MV0oaHR0cHM6
Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1j
bGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5
aloyTnJZelFpTENJeE5Ea2lMQ0ppWWpOaE5qVmpNRFJrTm1NaUxHWmhiSE5sWFEpCgpBcyB5b3Ug
d2VsbCBrbm93LFJvbWFuaWEgaXMgYSBjb3VudHJ5IHdpdGggZXh0cmVtZWx5IG1hbnlyZXNvdXJj
ZXNhbmQgd2Ugd2FudCB0byBkZXZlbG9wIGxvbmctdGVybSBwYXJ0bmVyc2hpcHMgd2l0aCBjb3Vu
dHJpZXMgdGhhdCBjYW4gaGVscCBkZXZlbG9wIFJvbWFuaWFuIGV4cG9ydHMuCk91ciBjb21wYW55
IGlzIG9uZSBvZiB0aGUgbGVhZGVycyBvbiB0aGUgdHJhZGUgbWFya2V0IGluIFJvbWFuaWEgYW5k
IHdlIHdhbnQgdG8gZGV2ZWxvcCBsb25nLXRlcm0gcGFydG5lcnNoaXBzIHdpdGggYXMgbWFueSBj
b3VudHJpZXMgaW4gdGhlIHdvcmxkIGFzIHBvc3NpYmxlLgpJbiB0aGlzIHNlbnNlLCB3ZSB3YW50
IHRvIGluZm9ybSB5b3Ugb2Ygb3VyIG9mZmVycyBvZiBSb21hbmlhbiBwcm9kdWN0cyBhdmFpbGFi
bGUgaW1tZWRpYXRlbHkuCgpFS08gVU5JVEVEIElOVkVTVE1FTlQKX19fX19fXwoKU3RyZWV0IEVt
aWwgUGFuZ3JhdHRpLCBuby4xMCArNCAwNzU3IDc3IDI4IDI4Cm9mZmljZUBla28tdHJhZGluZy5j
b20KCltmYWNlYm9va10oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVu
ZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellq
UTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5Ea2lMQ0poWkdNMU9HSm1OMlF5WVdV
aUxHWmhiSE5sWFEpIFtpbnN0YWdyYW1dKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0
X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4
YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhORGtpTENKbE9EbGta
VGt6TkdObVlqZ2lMR1poYkhObFhRKQpbVW5zY3JpYmVdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJv
P21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpB
d05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhORGtp
TENKalpqWTNPREpsTXpobU1EWWlMR1poYkhObFhRKSB8IE1hbmFnZSB5b3VyIHN1YnNjcmlwdGlv
bltsXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJh
Y2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMw
WXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TkRraUxDSTBaak13TjJObFpURTJNRFlpTEdaaGJITmxY
USkKQWRkIHlvdXIgZW1haWwgYWRyZXNzIGhlcmUhCl9fX19fX18KCkNvcHlyaWdodCDCqSAyMDIy
IHd3dy5la29ncm91cC5ybywgQWxsIHJpZ2h0cyByZXNlcnZlZC4KCltGYXJtZXJzTWFya2V0LUJv
dHRvbV0KCltNYWlsUG9ldF0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVy
JmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hN
ellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5Ea2lMQ0l5TUdNNVkyWTJNamN6
TURraUxHWmhiSE5sWFEpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
