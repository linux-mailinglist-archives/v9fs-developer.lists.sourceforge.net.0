Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E2156A253
	for <lists+v9fs-developer@lfdr.de>; Thu,  7 Jul 2022 14:50:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o9Qy4-0002s4-2c; Thu, 07 Jul 2022 12:50:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <01070181d8b66221-f41cdfa9-f7ab-494d-a83d-dbbfb1eb7c2e-000000@eu-central-1.amazonses.com>)
 id 1o9Qy2-0002ru-Pi
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Jul 2022 12:50:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t9ayfjSbumevRoZv/9Wo+ROl4vxnuOMQggfgUqS7fO8=; b=B5Lwj2d3w1u99YwVrwnc+HhBsn
 MYLPASO8DpafBp3w46xBN0b2cQ90AS/Jf576y9AgxPweYlyQiOURO5ghxWN5vEANyQ6Jbif7GxmWC
 Zo0+FqYyfQ+oh8S9zHHHqmctp8NSwheVgAAJUuTYW506tdJKEQKC+QJjLSAuewxPOxnk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=t9ayfjSbumevRoZv/9Wo+ROl4vxnuOMQggfgUqS7fO8=; b=RqZ4bHmpeIYD
 OWoYqVWrXPAMQkBIc0rOd21zw8l2crAL5JEYiEdKs+8KKYtK5+K5RWZraxHqYd+I7qlnVP5RPZ3Ti
 bFkOZLIj4uXuxvKN/fqzNmB7HB/kgvUEzu7uswuEyTRGOAaY2e6Qlu1tIpLEQ5YsWAs4/APOpRBAD
 hT0wQ=;
Received: from b227-249.smtp-out.eu-central-1.amazonses.com ([69.169.227.249])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.94.2)
 id 1o9Qy0-0002Rz-OZ
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Jul 2022 12:50:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=6dycfttairtwnmbdpqj6xnhm6vx4dept; d=eko-trading.com;
 t=1657198240;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=kDWGoW7Nuwsq9OdbRZUFE/GsJ9tQEy8/YY8msektFLg=;
 b=DP5KGT+PsqcgqvBUPDXMJ+0mCH/lt5/0a+yLMwkrlWx3EIhmFJkSKy6LuHvEaNFz
 tKHoKeq0qSilUAzMwjuuH5edbMoXTf++4O/Nw9I9L45Dy7KtkcQ3PKlRhNOVVZ7HNiU
 QgIXMnZ1utkZI/jXwGfkDhwuVmUw8htv38L3h+6I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1657198240;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=kDWGoW7Nuwsq9OdbRZUFE/GsJ9tQEy8/YY8msektFLg=;
 b=bpU0NvIloFRzTOtAi3wlqexwtUKASFS3kMY3Mvbw4m2bKSsjpSpFUO0CnGOAMta3
 a8yY+fzDoVYnb6uReCXJoTLPx7tKBWBlkxk9inYZLjeKcVdJoLmtygpc/dTdc+kJ4f4
 0Rh/DRZgT3ix8xD9gJc0w+WUjBzE4+39PLI97tZM=
Message-ID: <01070181d8b66221-f41cdfa9-f7ab-494d-a83d-dbbfb1eb7c2e-000000@eu-central-1.amazonses.com>
Date: Thu, 7 Jul 2022 12:50:40 +0000
From: Office <office@eko-trading.com>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.N8GLPrwMW4DEokEt/uX8R5Dj6lDs1dpqTZ0OFMrLAAo=:AmazonSES
X-SES-Outgoing: 2022.07.07-69.169.227.249
X-Spam-Score: 6.2 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  [Vizualizează asta în navigatorul tău.](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCIxNDYiLCI3MjBlODVhZDdkY2Ui
    [...] 
 
 Content analysis details:   (6.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: ekogroup.com.ro]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [69.169.227.249 listed in list.dnswl.org]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  2.5 URI_WP_HACKED_2        URI for compromised WordPress site, possible
                             malware
X-Headers-End: 1o9Qy0-0002Rz-OZ
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] 0.18 euro/0.5L, from Romania
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
aUxDSXhORFlpTENJM01qQmxPRFZoWkRka1kyVWlMR1poYkhObFhRKQoKW0Zhcm1lcnNNYXJrZXQt
VG9wXQoKW0NhcHR1cmHMhl9kZV9lY3Jhbl9kaW5fMjAyMi0wNy0wNV9sYV8xNC4zOC4zMy1yZW1v
dmViZy1wcmV2aWV3XShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5k
cG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpR
ME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TkRZaUxDSTFNV0UxTVRjNE9EVTNPV0lp
TEdaaGJITmxYUSkKCltDYXB0dXJhzIYgZGUgZWNyYW4gZGluIDIwMjItMDctMDUgbGEgMDguNTgu
MDNdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFj
ayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZ
elJyTkRSek9HOWpaMk5yWXpRaUxDSXhORFlpTENJM1pEUTNZVEJqTWpOaVpqa2lMR1poYkhObFhR
KQoKW0NhcHR1cmHMhiBkZSBlY3JhbiBkaW4gMjAyMi0wNy0wNyBsYSAxMS4xMy40MF0oaHR0cHM6
Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1j
bGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5
aloyTnJZelFpTENJeE5EWWlMQ0kxTVdFMU1UYzRPRFUzT1dJaUxHWmhiSE5sWFEpCgpBcyB5b3Ug
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
UTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5EWWlMQ0kwT1RjMU5EWmpNemt4WlRn
aUxHWmhiSE5sWFEpIFtpbnN0YWdyYW1dKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0
X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4
YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhORFlpTENJek1qRXpO
V1UwTTJFMFlUZ2lMR1poYkhObFhRKQpbVW5zY3JpYmVdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJv
P21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpB
d05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhORFlp
TENKalpHVm1NMlExWkdReE9Ea2lMR1poYkhObFhRKSB8IE1hbmFnZSB5b3VyIHN1YnNjcmlwdGlv
bltsXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJh
Y2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMw
WXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TkRZaUxDSm1NemRrWW1Wa1pqSXhOR1lpTEdaaGJITmxY
USkKQWRkIHlvdXIgZW1haWwgYWRyZXNzIGhlcmUhCl9fX19fX18KCkNvcHlyaWdodCDCqSAyMDIy
IHd3dy5la29ncm91cC5ybywgQWxsIHJpZ2h0cyByZXNlcnZlZC4KCltGYXJtZXJzTWFya2V0LUJv
dHRvbV0KCltNYWlsUG9ldF0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVy
JmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hN
ellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5EWWlMQ0ptTldReFl6a3hNRFpr
TlRFaUxHWmhiSE5sWFEpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
