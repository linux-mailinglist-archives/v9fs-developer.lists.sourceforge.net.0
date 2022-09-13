Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BEC5B6716
	for <lists+v9fs-developer@lfdr.de>; Tue, 13 Sep 2022 06:56:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oXxyV-0004Jp-R8;
	Tue, 13 Sep 2022 04:56:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <010701833534c4a7-d8298496-aa4e-4915-bc3b-858b5f198cd0-000000@eu-central-1.amazonses.com>)
 id 1oXxyU-0004Jj-1s for v9fs-developer@lists.sourceforge.net;
 Tue, 13 Sep 2022 04:56:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Zls+zjfO43pFDkkmRULCcVH0pHpd4S0lKLl2pRdjz08=; b=OW7sFo72H85txKrv5WR5NpMYOr
 BVDXuxcKT07h7LB4kUmSfXvd1g2TbO/EfHcrhPCtYs6gWH7l6ncaVBG42zSDVVLLIhG8Xeq79yt8L
 d1Ua+tVbbq/eNGmFRYtyo367Rk5S9rSwr9o6OUkJ1rH3Uos/omKdyLDtp2oT4JkuU5qE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=Zls+zjfO43pFDkkmRULCcVH0pHpd4S0lKLl2pRdjz08=; b=FUUF9ab7nteY
 /nIJ+Y16IamkhsKL+a5QJFaCkYn36WrJT5lGJWIwCsrVEXrGP0WWMRvCkt6r6expSM0TmiZNeO6Cg
 Or6VGY02xYZYLzmue3sLDXIUIsLgIrF1YliMSw/IYItAaH9TGnuYVhh8tVRDX7dtbBWstG7s2303w
 xZQsM=;
Received: from b224-11.smtp-out.eu-central-1.amazonses.com ([69.169.224.11])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.95) id 1oXxyS-006Yb3-W0
 for v9fs-developer@lists.sourceforge.net;
 Tue, 13 Sep 2022 04:56:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1663044994;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=hP4AEQzNb3C2I0hOoXDT40ozJZK8Eox4AvNQG9qd5Hk=;
 b=UN1nwoKLB1QhmWlYzl9ctZjsP38yilxEO105w3gP6MKY3aR/sTddRz1GKJ2kRCzo
 oDRrt9HU12xY7/DZJOqd2ppMD9qqkHzMIx9MOS9KcPpsovoXAdXh9zTq/6FTd7cL8x8
 blcgQtJZVOfiwR3kvrfMgwKREMWr0za6At7ft1mY=
Message-ID: <010701833534c4a7-d8298496-aa4e-4915-bc3b-858b5f198cd0-000000@eu-central-1.amazonses.com>
Date: Tue, 13 Sep 2022 04:56:34 +0000
From: Office <office@eko-trading.com>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.djyq42v8KkM0/QeLxShdouHjGcCwozGoD2tdHmaPOOk=:AmazonSES
X-SES-Outgoing: 2022.09.13-69.169.224.11
X-Spam-Score: 6.3 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  [Vizualizează asta în navigatorul tău.](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCIxNjciLCI4NDRiN2M4Y2Q1YjQi
    [...] 
 
 Content analysis details:   (6.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [69.169.224.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: ekogroup.com.ro]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [69.169.224.11 listed in wl.mailspike.net]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  2.5 URI_WP_HACKED_2        URI for compromised WordPress site, possible
                             malware
X-Headers-End: 1oXxyS-006Yb3-W0
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Romanian Wheat | in stock
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
aUxDSXhOamNpTENJNE5EUmlOMk00WTJRMVlqUWlMR1poYkhObFhRKQoKW0Zhcm1lcnNNYXJrZXQt
VG9wXQoKW2xvZ29fZWtvZ3JvdXAtcmVtb3ZlYmctcHJldmlld10KCk91ciBjb21wYW55IGNhbiBv
ZmZlciArNTAsMDAwIHRvbnMgLyBtb250aCBvZiBSb21hbmlhbiBXaGVhdApbQ2FwdHVyYcyGIGRl
IGVjcmFuIGRpbiAyMDIyLTA2LTIxIGxhIDA5LjAxLjM0XShodHRwczovL2Vrb2dyb3VwLmNvbS5y
bz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16
QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4Tmpj
aUxDSTNNRE15WldZeFpXSXlNVFVpTEdaaGJITmxYUSkKCkFzIHlvdSB3ZWxsIGtub3csUm9tYW5p
YSBpcyBhIGNvdW50cnkgd2l0aCBleHRyZW1lbHkgbWFueXJlc291cmNlc2FuZCB3ZSB3YW50IHRv
IGRldmVsb3AgbG9uZy10ZXJtIHBhcnRuZXJzaGlwcyB3aXRoIGNvdW50cmllcyB0aGF0IGNhbiBo
ZWxwIGRldmVsb3AgUm9tYW5pYW4gZXhwb3J0cy4KT3VyIGNvbXBhbnkgaXMgb25lIG9mIHRoZSBs
ZWFkZXJzIG9uIHRoZSB0cmFkZSBtYXJrZXQgaW4gUm9tYW5pYSBhbmQgd2Ugd2FudCB0byBkZXZl
bG9wIGxvbmctdGVybSBwYXJ0bmVyc2hpcHMgd2l0aCBhcyBtYW55IGNvdW50cmllcyBpbiB0aGUg
d29ybGQgYXMgcG9zc2libGUuCkluIHRoaXMgc2Vuc2UsIHdlIHdhbnQgdG8gaW5mb3JtIHlvdSBv
ZiBvdXIgb2ZmZXJzIG9mIFJvbWFuaWFuIHByb2R1Y3RzIGF2YWlsYWJsZSBpbW1lZGlhdGVseS4K
CkVLTyBVTklURUQgSU5WRVNUTUVOVApfX19fX19fCgpTdHJlZXQgRW1pbCBQYW5ncmF0dGksIG5v
LjEwICs0IDA3NTcgNzcgMjggMjgKaW52ZXN0aXRpaUBla29ncm91cC5ybwoKW2ZhY2Vib29rXSho
dHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0
aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5E
UnpPRzlqWjJOcll6UWlMQ0l4TmpjaUxDSm1OR1ppWmpoaFpUTmpOMklpTEdaaGJITmxYUSkgW2lu
c3RhZ3JhbV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50
PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05q
WjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5qY2lMQ0kxWlRoaVl6WXdPR0ZsTURBaUxHWmhi
SE5sWFEpCltVbnNjcmliZV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVy
JmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hN
ellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5qY2lMQ0prTlRkaE56a3laalE1
TURVaUxHWmhiSE5sWFEpIHwgTWFuYWdlIHlvdXIgc3Vic2NyaXB0aW9uW2xdKGh0dHBzOi8vZWtv
Z3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2sm
ZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5y
WXpRaUxDSXhOamNpTENKaE5tUmpaVE01TkRCaVl6QWlMR1poYkhObFhRKQpBZGQgeW91ciBlbWFp
bCBhZHJlc3MgaGVyZSEKX19fX19fXwoKQ29weXJpZ2h0IMKpIDIwMjIgd3d3LmVrb2dyb3VwLnJv
LCBBbGwgcmlnaHRzIHJlc2VydmVkLgoKW0Zhcm1lcnNNYXJrZXQtQm90dG9tXQoKW01haWxQb2V0
XShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2sm
YWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpS
ck5EUnpPRzlqWjJOcll6UWlMQ0l4TmpjaUxDSXdNREZsTm1VeFltRTNOMlFpTEdaaGJITmxYUSkK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2
ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQK
aHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9w
ZXIK
