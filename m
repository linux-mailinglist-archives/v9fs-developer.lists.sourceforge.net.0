Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4945674CB
	for <lists+v9fs-developer@lfdr.de>; Tue,  5 Jul 2022 18:50:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o8lkm-0003qX-FG; Tue, 05 Jul 2022 16:50:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <01070181cf44f653-b6b66f2c-76fb-4f1a-b1d0-6d515767e604-000000@eu-central-1.amazonses.com>)
 id 1o8lkk-0003qR-2n
 for v9fs-developer@lists.sourceforge.net; Tue, 05 Jul 2022 16:50:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bqzJUNLgfVwQouEiKm5mAjCKK4c477EAzOBiZ2aO3Rw=; b=fbbLNkjF3v7waqbpaUO2t7o8Hz
 ofTf0s3F/KnnliVIXMvfeBbIZFgtz+A3T+lJogngOR/UQwIiyTCpxaGzMXBPzX/RWmKyjj40FG5LK
 bwgWgYdxBn3Ob3qZWbpDOEgclvbPJddDXLrYb5vtw6Cf8Rwt1sjXWLQxdQ3Fyh6vNr3w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=bqzJUNLgfVwQouEiKm5mAjCKK4c477EAzOBiZ2aO3Rw=; b=f66NZzJv6omp
 7DOqqyxjRQOduxGvSAJh0m910h0pJZCT6OXuzdXkZdFxNi3o70Mm3xUjxs3Hl1ylGqqn8i5sGcJqe
 BotRcHu+dwIgPU256nYywuarudgzFX3cNP1BCW+SMEAezgxj8iete9nEBAN7aB97BMMqWLnsUFGff
 +xl3g=;
Received: from b227-249.smtp-out.eu-central-1.amazonses.com ([69.169.227.249])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.94.2)
 id 1o8lkg-0083Qr-Uc
 for v9fs-developer@lists.sourceforge.net; Tue, 05 Jul 2022 16:50:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=6dycfttairtwnmbdpqj6xnhm6vx4dept; d=eko-trading.com;
 t=1657039812;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=RlOYhZqNdPQ+o5QCTx/UYJfKq5NDkThCg5+6H09hGoE=;
 b=KtwByTxQEekAwNNVAexjQ/MU32o2BPCWBSDNvT9DhfeOkHHwbsa5K+mLe3zoPjri
 AblalWU2NjCOYX4QxBu1Kcu4ewNv5yWGk3NfytEQ1IiNlgSsz7kZMifu+nK1C453bz5
 TjpCqAHjns5Nebrb/iXKZHizyxImz2ch93J0N5FY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1657039812;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=RlOYhZqNdPQ+o5QCTx/UYJfKq5NDkThCg5+6H09hGoE=;
 b=Qpw5GCyISYwnf/7dtNdNMKrA8FNAjLeSniXjmI72r4ZyPxGUL9yc2wK9gEWg6gAz
 JxSppVEUeDpQ2aLp3CXhrYuIuGEv3NBtvKsCJLbAQaIilWkmFz2OCHXJLZsWB6+ILmO
 DoK2dTzDCFzUn84aVNKlZu20be6TdsZoj6CcsqEI=
Message-ID: <01070181cf44f653-b6b66f2c-76fb-4f1a-b1d0-6d515767e604-000000@eu-central-1.amazonses.com>
Date: Tue, 5 Jul 2022 16:50:12 +0000
From: Office <office@eko-trading.com>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.N8GLPrwMW4DEokEt/uX8R5Dj6lDs1dpqTZ0OFMrLAAo=:AmazonSES
X-SES-Outgoing: 2022.07.05-69.169.227.249
X-Spam-Score: 6.2 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  [Vizualizează asta în navigatorul tău.](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCIxNDQiLCI0NTRhMjc3MzhkMjgi
    [...] 
 
 Content analysis details:   (6.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [69.169.227.249 listed in list.dnswl.org]
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: ekogroup.com.ro]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
  2.5 URI_WP_HACKED_2        URI for compromised WordPress site, possible
                             malware
X-Headers-End: 1o8lkg-0083Qr-Uc
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Romanian Comodities
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
aUxDSXhORFFpTENJME5UUmhNamMzTXpoa01qZ2lMR1poYkhObFhRKQoKW0Zhcm1lcnNNYXJrZXQt
VG9wXQoKW0NhcHR1cmHMhl9kZV9lY3Jhbl9kaW5fMjAyMi0wNy0wNV9sYV8xNC4zOC4zMy1yZW1v
dmViZy1wcmV2aWV3XShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5k
cG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpR
ME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TkRRaUxDSmlaVEl3T1dJNU1HTmtOekVp
TEdaaGJITmxYUSkKCltDYXB0dXJhzIYgZGUgZWNyYW4gZGluIDIwMjItMDctMDUgbGEgMDguNTgu
MDNdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFj
ayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZ
elJyTkRSek9HOWpaMk5yWXpRaUxDSXhORFFpTENJME9EUXhPVGRrTWpCaU5ERWlMR1poYkhObFhR
KQoKW0NhcHR1cmHMhiBkZSBlY3JhbiBkaW4gMjAyMi0wNy0wNSBsYSAxNi40OC4xNl0oaHR0cHM6
Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1j
bGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5
aloyTnJZelFpTENJeE5EUWlMQ0ppWlRJd09XSTVNR05rTnpFaUxHWmhiSE5sWFEpCgpBcyB5b3Ug
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
UTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5EUWlMQ0poTkdWa1pEVTNOVFl4TkRj
aUxHWmhiSE5sWFEpIFtsaW5rZWRpbl0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRf
cm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhh
V0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5EUWlMQ0poTldRMU9E
UmhObUV3T1RnaUxHWmhiSE5sWFEpCltVbnNjcmliZV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/
bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3
TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5EUWlM
Q0kzWldJd056Z3daRGRsWXpFaUxHWmhiSE5sWFEpIHwgTWFuYWdlIHlvdXIgc3Vic2NyaXB0aW9u
W2xdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFj
ayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZ
elJyTkRSek9HOWpaMk5yWXpRaUxDSXhORFFpTENJeVl6YzROMlUwT0dObFkyVWlMR1poYkhObFhR
KQpBZGQgeW91ciBlbWFpbCBhZHJlc3MgaGVyZSEKX19fX19fXwoKQ29weXJpZ2h0IMKpIDIwMjIg
d3d3LmVrb2dyb3VwLnJvLCBBbGwgcmlnaHRzIHJlc2VydmVkLgoKW0Zhcm1lcnNNYXJrZXQtQm90
dG9tXQoKW01haWxQb2V0XShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXIm
ZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16
WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TkRRaUxDSmtaVE5sWVRJMFpUZ3lN
VGtpTEdaaGJITmxYUSkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vdjlmcy1kZXZlbG9wZXIK
