Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 490AE552E1F
	for <lists+v9fs-developer@lfdr.de>; Tue, 21 Jun 2022 11:21:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o3a4u-0005uo-Rq; Tue, 21 Jun 2022 09:21:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <0107018185910544-d108b6af-ce40-43ce-ac3c-0df1f204fb3b-000000@eu-central-1.amazonses.com>)
 id 1o3a4s-0005ug-KI
 for v9fs-developer@lists.sourceforge.net; Tue, 21 Jun 2022 09:21:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1FJzZytozxBk776Ko9RQwcICnCBrsdO/WlfKBqovv2A=; b=mpQkK89g/m58NOzJSU8/LBkR48
 25dvV2YIbnwP+4kHLdGdyAAzMvSRNQs7QGg/erFDPIXk6ZtoxyOdcOGEYkDxlUrzADrgWx2L2AyYG
 /I4pnfAVxfld7nm9CTkMXTM/5Khj6MrdnZESfQMu6yxOJ4B3WKzA3rwf7AbvlOZUvQsU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=1FJzZytozxBk776Ko9RQwcICnCBrsdO/WlfKBqovv2A=; b=iNrCnQKoqFMq
 vi4by9Tmnn5prwInygnje/rA1Z/7+VtvYsBiuU9a64LLDMAI16dxz25iRSD+ELeKMOa7TOCCjMg7S
 Fn5qzeq7s8KyVyp7rSPgwIRaQ+/74+oDmrMzegL0UNH9IUMo4IZmQee18BunPbw2ISHlaUbIsi2Eu
 TdmzA=;
Received: from b227-249.smtp-out.eu-central-1.amazonses.com ([69.169.227.249])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.94.2)
 id 1o3a4p-00081m-3z
 for v9fs-developer@lists.sourceforge.net; Tue, 21 Jun 2022 09:21:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=chhfa7u27a4tep4llzorwkggr6ld47ie; d=eko.com.ro; t=1655803282;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=3XuFLjQhyviENvbzAT92ZyIX7qCWIJZt7flJESMao5o=;
 b=Yq+nd+X8wp8uqgPcZpdvLWAJ1ULjbv0jlrq3pTFhGOCLZe8k2XloyXUJ9JglcKYQ
 pHC2oXXEHDCIc2p1kGQ1HCr5MP1MfC2S9RAnnIKG33QGqkb1x5D6F/KscBel03bBf/z
 w5D5dYKm927CfUvvo0fjLyt+PiGfixhldApsavBoHFKKpmrDGFkCyqwEFffO4PDMEaN
 7s0zQZ3PExHyLRH3OOMQr5Xh5nnCulCepTXwpaeLhHvGnmaozfTsfiGnQ3sVK6AVqoJ
 VvTagB9VkkMvYMvOqB+l6mYnJYMwuqp4sDCS9GG7HwI/vccIGXfBMsaDlNX7B7P0dGA
 7xFE4o0t8g==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1655803282;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=3XuFLjQhyviENvbzAT92ZyIX7qCWIJZt7flJESMao5o=;
 b=Ppychwt/rSdHikUx7RuTP9B3uLulRPigZ9/h9O0pvszc+QfS8Fs9cQ7rCn//oPm/
 KwHbqPvcJXqmIM/Cb/VJBM8QcEny99Zpxo7o2NqnGMkRucUAKsTg2SCglY529VhuGEE
 J6tHcqmTpsa/3v+I9nXsCUCjTtohM6ff7mbFNOWc=
Message-ID: <0107018185910544-d108b6af-ce40-43ce-ac3c-0df1f204fb3b-000000@eu-central-1.amazonses.com>
Date: Tue, 21 Jun 2022 09:21:22 +0000
From: Office <office@eko.com.ro>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.N8GLPrwMW4DEokEt/uX8R5Dj6lDs1dpqTZ0OFMrLAAo=:AmazonSES
X-SES-Outgoing: 2022.06.21-69.169.227.249
X-Spam-Score: 4.3 (++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  [Vizualizează asta în navigatorul tău.](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCIxNDAiLCIyYzAzM2MwZGFiYTMi
    [...] 
 
 Content analysis details:   (4.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [69.169.227.249 listed in list.dnswl.org]
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: ekogroup.com.ro]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
  2.5 URI_WP_HACKED_2        URI for compromised WordPress site, possible
                             malware
X-Headers-End: 1o3a4p-00081m-3z
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
Reply-To: Office <office@eko.com.ro>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

W1ZpenVhbGl6ZWF6xIMgYXN0YSDDrm4gbmF2aWdhdG9ydWwgdMSDdS5dKGh0dHBzOi8vZWtvZ3Jv
dXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0
YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpR
aUxDSXhOREFpTENJeVl6QXpNMk13WkdGaVlUTWlMR1poYkhObFhRKQoKW0Zhcm1lcnNNYXJrZXQt
VG9wXQoKW2xvZ29fZWtvZ3JvdXAtcmVtb3ZlYmctcHJldmlld10KCk91ciBjb21wYW55IGNhbiBv
ZmZlciArMTAsMDAwIHRvbnMgLyBtb250aCBvZiBSb21hbmlhbiBXaGVhdApbQ2FwdHVyYcyGIGRl
IGVjcmFuIGRpbiAyMDIyLTA2LTIxIGxhIDA5LjAxLjM0XShodHRwczovL2Vrb2dyb3VwLmNvbS5y
bz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16
QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TkRB
aUxDSTNaalF4WlRVd01UVmtOamtpTEdaaGJITmxYUSkKCkFzIHlvdSB3ZWxsIGtub3csUm9tYW5p
YSBpcyBhIGNvdW50cnkgd2l0aCBleHRyZW1lbHkgbWFueXJlc291cmNlc2FuZCB3ZSB3YW50IHRv
IGRldmVsb3AgbG9uZy10ZXJtIHBhcnRuZXJzaGlwcyB3aXRoIGNvdW50cmllcyB0aGF0IGNhbiBo
ZWxwIGRldmVsb3AgUm9tYW5pYW4gZXhwb3J0cy4KT3VyIGNvbXBhbnkgaXMgb25lIG9mIHRoZSBs
ZWFkZXJzIG9uIHRoZSB0cmFkZSBtYXJrZXQgaW4gUm9tYW5pYSBhbmQgd2Ugd2FudCB0byBkZXZl
bG9wIGxvbmctdGVybSBwYXJ0bmVyc2hpcHMgd2l0aCBhcyBtYW55IGNvdW50cmllcyBpbiB0aGUg
d29ybGQgYXMgcG9zc2libGUuCkluIHRoaXMgc2Vuc2UsIHdlIHdhbnQgdG8gaW5mb3JtIHlvdSBv
ZiBvdXIgb2ZmZXJzIG9mIFJvbWFuaWFuIHByb2R1Y3RzIGF2YWlsYWJsZSBpbW1lZGlhdGVseS4K
CkVLTyBUUkFERSBCVVNJTkVTUwpfX19fX19fCgpTdHJlZXQgRW1pbCBQYW5ncmF0dGksIG5vLjEw
ICs0IDA3NTcgNzcgMjggMjgKaW52ZXN0aXRpaUBla29ncm91cC5ybwoKW2ZhY2Vib29rXShodHRw
czovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9u
PWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpP
RzlqWjJOcll6UWlMQ0l4TkRBaUxDSXhaREl6TXpVeFkyRTJOakFpTEdaaGJITmxYUSkgW2luc3Rh
Z3JhbV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRy
YWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJz
MFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5EQWlMQ0k1WlRSak1EaGhPREEyTURjaUxHWmhiSE5s
WFEpCltVbnNjcmliZV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVu
ZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellq
UTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE5EQWlMQ0poWm1ZNU5EUmtNbVF6WldJ
aUxHWmhiSE5sWFEpIHwgTWFuYWdlIHlvdXIgc3Vic2NyaXB0aW9uW2xdKGh0dHBzOi8vZWtvZ3Jv
dXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0
YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpR
aUxDSXhOREFpTENJd05HVmxOamxqTUdFNU9UWWlMR1poYkhObFhRKQpBZGQgeW91ciBlbWFpbCBh
ZHJlc3MgaGVyZSEKX19fX19fXwoKQ29weXJpZ2h0IMKpIDIwMjIgd3d3LmVrb2dyb3VwLnJvLCBB
bGwgcmlnaHRzIHJlc2VydmVkLgoKW0Zhcm1lcnNNYXJrZXQtQm90dG9tXQoKW01haWxQb2V0XSho
dHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0
aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5E
UnpPRzlqWjJOcll6UWlMQ0l4TkRBaUxDSXhZMk0zTnpFNE5HRXlNamdpTEdaaGJITmxYUSkKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxv
cGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0
cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
