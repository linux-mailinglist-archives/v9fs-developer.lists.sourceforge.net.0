Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ABDB56BCEA
	for <lists+v9fs-developer@lfdr.de>; Fri,  8 Jul 2022 17:30:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o9pvi-0006xn-O5; Fri, 08 Jul 2022 15:30:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <01070181de6e5c6f-09de1bb0-96ed-4afc-be54-dfa4605bb9b7-000000@eu-central-1.amazonses.com>)
 id 1o9pvd-0006xc-MO
 for v9fs-developer@lists.sourceforge.net; Fri, 08 Jul 2022 15:30:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iOaRPDdIv2F00o9b/7gPBhNb5hK52sVQ9otQUBd23Jo=; b=G0xjJ4VI8PQfzJD3L6gfqozTOs
 USuP3cLrbHawlbWEhoj/mki2Wl07Pd2lu3HynkHGBSox6ghjdsXIcFXriDlZG5LEpgpdJ+QMX4uuG
 cchGgxK3YAo4ILeLSErs76tFIEWAW23Ky+bMdkz3ShgW8jdRDbW4DHaJGQVp9E4nqSz8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=iOaRPDdIv2F00o9b/7gPBhNb5hK52sVQ9otQUBd23Jo=; b=nCntOV8d4Hhh
 meu1rGynvPmOZcMdse7YDZ8zL2Mbju17VzyIqtyFevvBhvR6tBfWKn617Ks7qB+zl7Lmlf21Mc+2L
 k1r8Aa4y9CL56zpC7IXGH4/kyfnvg3E2SpJxNkJGejRKk7Plvfvm2MLSC6Zr7eIflkgG5gMnTyygZ
 ognaY=;
Received: from b227-249.smtp-out.eu-central-1.amazonses.com ([69.169.227.249])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.94.2)
 id 1o9pva-00068N-Hs
 for v9fs-developer@lists.sourceforge.net; Fri, 08 Jul 2022 15:30:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=6dycfttairtwnmbdpqj6xnhm6vx4dept; d=eko-trading.com;
 t=1657294183;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=qI9eRDy0u4ZMsZV9sxg7JFqUAoxH8f8UtUVp416pgVM=;
 b=GRzlJlIOX9Ir1KChGx2y5Lxp520O2bYuPmtot9yYEjjVdEFeitAFbp8y536+oqCA
 dZ33XbkEZDtdDVd4q6QeLcuwzeKaXt4g/Uq7f51Qjr4AZHnu5KpN3ap/VdkyU2b1Iem
 5WTc0t8JIau9Oif2s11MyZpUMjh7NJXHm5EZQ+ms=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1657294183;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=qI9eRDy0u4ZMsZV9sxg7JFqUAoxH8f8UtUVp416pgVM=;
 b=T5vtfj9CT8FJbQf5k1mfKRrDEthUWxAg6/3mEW9Hbce2PYt6gAwVJ0JtQ53MS5kA
 24F6XJpV68/y/Qw+AMu/9d254boKJrARAAA80DyhEn+HrZQOlJvBJT9lKNDMTT8zu/K
 PunhTsVXJv64G8dXXLhjhndfU1GS96YnW6SZS4/A=
Message-ID: <01070181de6e5c6f-09de1bb0-96ed-4afc-be54-dfa4605bb9b7-000000@eu-central-1.amazonses.com>
Date: Fri, 8 Jul 2022 15:29:43 +0000
From: Office <office@eko-trading.com>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.N8GLPrwMW4DEokEt/uX8R5Dj6lDs1dpqTZ0OFMrLAAo=:AmazonSES
X-SES-Outgoing: 2022.07.08-69.169.227.249
X-Spam-Score: 6.2 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  [Vizualizează asta în navigatorul tău.](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCIxNDciLCJkMDBjNmMzZWQ1Yzgi
    [...] 
 
 Content analysis details:   (6.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [69.169.227.249 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: ekogroup.com.ro]
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  2.5 URI_WP_HACKED_2        URI for compromised WordPress site, possible
                             malware
X-Headers-End: 1o9pva-00068N-Hs
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] White wheat flour 650 bakery, from Romania
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
aUxDSXhORGNpTENKa01EQmpObU16WldRMVl6Z2lMR1poYkhObFhRKQoKW0Zhcm1lcnNNYXJrZXQt
VG9wXQoKW0NhcHR1cmHMhl9kZV9lY3Jhbl9kaW5fMjAyMi0wNy0wNV9sYV8xNC4zOC4zMy1yZW1v
dmViZy1wcmV2aWV3XShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5k
cG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpR
ME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TkRjaUxDSTBNVGRtWW1aaVlUQXhaV1Fp
TEdaaGJITmxYUSkKCltDYXB0dXJhzIYgZGUgZWNyYW4gZGluIDIwMjItMDctMDUgbGEgMDguNTgu
MDNdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFj
ayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZ
elJyTkRSek9HOWpaMk5yWXpRaUxDSXhORGNpTENKaU1tTmpPRFE1WVRrM01XRWlMR1poYkhObFhR
KQoKW0NhcHR1cmHMhiBkZSBlY3JhbiBkaW4gMjAyMi0wNy0wOCBsYSAxNC4xOS40N10oaHR0cHM6
Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1j
bGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5
aloyTnJZelFpTENJeE5EY2lMQ0kwTVRkbVltWmlZVEF4WldRaUxHWmhiSE5sWFEpCgpBcyB5b3Ug
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
UTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5EY2lMQ0l3TkRkalpXWmpaV1V6TkRN
aUxHWmhiSE5sWFEpIFtpbnN0YWdyYW1dKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0
X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4
YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhORGNpTENKaVlUVmlN
ak16WXpCa1pqSWlMR1poYkhObFhRKQpbVW5zY3JpYmVdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJv
P21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpB
d05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhORGNp
TENKa1ltSTRNVGt4TXpWbVkyUWlMR1poYkhObFhRKSB8IE1hbmFnZSB5b3VyIHN1YnNjcmlwdGlv
bltsXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJh
Y2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMw
WXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TkRjaUxDSXdZemRtWkRFM1lqWmtZVGtpTEdaaGJITmxY
USkKQWRkIHlvdXIgZW1haWwgYWRyZXNzIGhlcmUhCl9fX19fX18KCkNvcHlyaWdodCDCqSAyMDIy
IHd3dy5la29ncm91cC5ybywgQWxsIHJpZ2h0cyByZXNlcnZlZC4KCltGYXJtZXJzTWFya2V0LUJv
dHRvbV0KCltNYWlsUG9ldF0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVy
JmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hN
ellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5EY2lMQ0ptWXpRNU1UVmlOekky
WTJRaUxHWmhiSE5sWFEpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
