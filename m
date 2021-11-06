Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B33044709B
	for <lists+v9fs-developer@lfdr.de>; Sat,  6 Nov 2021 22:07:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mjSuA-0006xE-Ck; Sat, 06 Nov 2021 21:07:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <infos@plusdinfos.eu>) id 1mjSu8-0006x7-Se
 for v9fs-developer@lists.sourceforge.net; Sat, 06 Nov 2021 21:07:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :List-Unsubscribe:Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DkAP+F369r50As/nnhKsEF89959pBfkepo2TUht2xB0=; b=Zpe+/oYluCQ4bshWn9Cpfzz9Zq
 KGO/hXFjj3wTljJByODj0FCVb54spR3P7A2vxTJ5tluDreUMpnSBtW+iVqbK+gpd4ZXtbm4sO71mJ
 A4eAdvwPpYGIxcMzfWUTrPDbScWJE3cnVMgMn6FLbE/jY/3lOaiBDpoSEDcV2mA9AuS4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DkAP+F369r50As/nnhKsEF89959pBfkepo2TUht2xB0=; b=FF16TdkmNcLi0Zg1XvQLeRF3E3
 y6+KyRaEf6BZSDNhSMai6AwuQqwN+2JHWF+kcegFaTuCtHdUDP1b10nS40WJdY2769sPrkhgJrvvY
 15sOBqYfQGeACbsulhjGuxoMUqYyS9rCgnTKb7v/VGpIIMYEgVsBH34WYTysdUZQt0go=;
Received: from [146.59.157.241] (helo=smtp.plusdinfos.eu)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mjSu4-0004it-Iq
 for v9fs-developer@lists.sourceforge.net; Sat, 06 Nov 2021 21:07:12 +0000
Date: Sat, 6 Nov 2021 22:06:57 +0100
Authentication-Results: smtp.plusdinfos.eu; dkim=temperror (0-bit key;
 unprotected) header.d=plusdinfos.eu header.i=infos@plusdinfos.eu
 header.b="NYs7WBjt"; dkim-atps=neutral
To: v9fs-developer@lists.sourceforge.net
Message-ID: <1636232817.e3c5870ff424674f8badc25356bd3108@plusdinfos.eu>
X-Priority: 3
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha1; q=dns/txt; l=7993; s=mail;
 t=1636232817; c=relaxed/simple; h=From:To:Subject;
 d=plusdinfos.eu; i=infos@plusdinfos.eu;
 z=From:=20WELIVE=20Laurens=20<infos@plusdinfos.eu>
 |To:=20v9fs-developer@lists.sourceforge.net
 |Subject:=20=3D?UTF-8?Q?Celebrate_all_together_=3DF0=3D9F=3D8E=3D89?=3D;
 bh=HZNlbY35yF33uFASpDXDvnsH3Ao=;
 b=NYs7WBjtagW11y0QfBY3AltzOIkSnIRyMlW0L+wPS8OzZEvDbdOPocy1kj8/kdD/luzTqphV0ESO/Vr9TUAaqYyF4IDdC+rlgf7U95LiZQcFjHRFRyH97CF0pDvKOLUrBpjOVDqhwuvcqWGY1jRw+r8UGodbaR8kEhe+HjCLV8xmQGkl6q48mrPFSKAsQsOhKFYP8cZ3YwrbpSafovQ+bU/y6cG5OZVsWvm1yB3TlmO6IWyvuhqG0F+dXSm8UAUg46Jd+tswyjmjqd1arT4Hkem8d4+Nvbsy7/TGe0b+eroTj/W61LAHTOhavIXwlnRz2XrI0nLlolQ8nLidMBYLSA==
X-Spam-Score: 5.9 (+++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello, Guess what… In less than 1 month, it will already
    be Christmas! What if you took the opportunity to make this holiday season
    a time of conviviality and joy within your teams? To break down barriers
   and strengthen human ties between your different departments? 
 
 Content analysis details:   (5.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: challenge-ouilive.fr]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: plusdinfos.eu]
  0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1mjSu4-0004it-Iq
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?Celebrate_all_together_=F0=9F=8E=89?=
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
From: WELIVE Laurens via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: challenge.ouilive@gmail.com
Cc: WELIVE Laurens <infos@plusdinfos.eu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGVsbG8sCiAKR3Vlc3Mgd2hhdOKApiBJbiBsZXNzIHRoYW4gMSBtb250aCwgaXQgd2lsbCBhbHJl
YWR5IGJlIENocmlzdG1hcyEKIApXaGF0IGlmIHlvdSB0b29rIHRoZSBvcHBvcnR1bml0eSB0byBt
YWtlIHRoaXMgaG9saWRheSBzZWFzb24gYSB0aW1lIG9mIGNvbnZpdmlhbGl0eSBhbmQgam95IHdp
dGhpbiB5b3VyIHRlYW1zPyBUbyBicmVhayBkb3duIGJhcnJpZXJzIGFuZCBzdHJlbmd0aGVuIGh1
bWFuIHRpZXMgYmV0d2VlbiB5b3VyIGRpZmZlcmVudCBkZXBhcnRtZW50cz8gCiAKRHVyaW5nIHRo
aXMgaG9saWRheSBzZWFzb24sIE91aUxpdmUsIFRyYWluIE1lIENvcnBvcmF0ZSBHcm91cCBEZWNh
dGhsb24gYW5kIEVtbWHDvHMgU29saWRhcml0JmVhY3V0ZTsgYXJlIHRlYW1pbmcgdXAgdG8gb2Zm
ZXIgeW91IGFuIHVucHJlY2VkZW50ZWQgZXhwZXJpZW5jZTogdGhlIENocmlzdG1hcyAyMDIxIENo
YWxsZW5nZTsgdGhlIHBlcnNvbmFsIGFuZCBjb2xsZWN0aXZlIGRldmVsb3BtZW50IG9mIHlvdXIg
ZW1wbG95ZWVzIHdoaWxlIGFsbCBhY3RpbmcgdG9nZXRoZXIgdG8gaGVscCB0aGUgbW9zdCBkaXNh
ZHZhbnRhZ2VkLgogCjQgd2Vla3Mgb2YgY2VsZWJyYXRpb25zIGFsbCB0b2dldGhlci4uLgogClRv
IHBsYXksIG5vdGhpbmcmIzAzOTtzIGVhc2llciEgRWFjaCBlbXBsb3llZSBjb25uZWN0cyB0byB0
aGVpciBwcm9maWxlIG9uIHRoZSBhcHBsaWNhdGlvbiBkZWRpY2F0ZWQgdG8gdGhlIENoYWxsZW5n
ZS4gRm9yIDQgd2Vla3MsIGVhY2ggcGFydGljaXBhbnQgd2lsbCBiZSBvZmZlcmVkIDEgY3JlYXRp
dmUsIHNwb3J0aW5nIG9yIGludGVyYWN0aXZlIGNoYWxsZW5nZSBwZXIgZGF5IGFyb3VuZCA0IG1h
am9yIHRoZW1lczoK4pePIENocmlzdG1hcyBjcmVhdGl2aXR5OiB0byBzaGFyZSB5b3VyIGhpZGRl
biB0YWxlbnRzCuKXjyBUaGUgZW5lcmd5IG9mIENocmlzdG1hczogdG8gcmVsYXggYmVmb3JlIHRo
ZSBwYXJ0eSAK4pePIENocmlzdG1hcyBkZWxpY2FjaWVzOiB0byBmZWFzdCB3aGlsZSByZW1haW5p
bmcgYmFsYW5jZWQK4pePIENocmlzdG1hcyBzb2xpZGFyaXR5OiB0byBoZWxwIHRoZSBtb3N0IHZ1
bG5lcmFibGUKIApFYWNoIGVtcGxveWVlIGRpc2NvdmVycyBhbmQgdGFrZXMgdXAgdGhlaXIgY2hh
bGxlbmdlIGV2ZXJ5IGRheSB0byBlYXJuIHBvaW50cyBmb3IgdGhlbXNlbHZlcyBhbmQgZXNwZWNp
YWxseSBmb3IgeW91ciBjb21wYW55LiBUaGUgY2hhbGxlbmdlID8gSGVscCB5b3UgbW92ZSB1cCB5
b3VyIG9yZ2FuaXNhdGlvbiBpbiB0aGUgcmFua2luZ3MgYW5kIHRha2UgeW91ciBwbGFjZSBvbiBv
bmUgb2YgdGhlIHBvZGl1bXMgb2YgdGhlIGJpZ2dlc3QgSW50ZXItY29tcGFuaWVzIENoYWxsZW5n
ZSBvZiB0aGlzIGVuZCBvZiB0aGUgeWVhciEKIApJbiBhZGRpdGlvbiB0byB0aGUgY2hhbGxlbmdl
cywgMTAgb25saW5lIHdvcmtzaG9wcyB3aWxsIGJlIG9mZmVyZWQgdG8gYWxsIHBhcnRpY2lwYW50
czoKLSBEbyBJdCBZb3Vyc2VsZiB3b3Jrc2hvcHMgKE1ha2luZyBob21lbWFkZSBDaHJpc3RtYXMg
YmF1YmxlKQotIE1peG9sb2d5IFdvcmtzaG9wcyAoUHJlcGFyYXRpb24gb2YgQ2hyaXN0bWFzIENv
Y2t0YWlscykKLSBDaGVmJiMwMzk7cyBSZWNpcGUgV29ya3Nob3BzIChDaHJpc3RtYXMgbWVhbCBw
cmVwYXJhdGlvbikKLSBOdXRyaXRpb24sIFNsZWVwLCBXZWxsLWJlaW5nIGFuZCBSZWxheGF0aW9u
IHdvcmtzaG9wcyAocmVsYXhhdGlvbiB0aGVyYXB5LCBmYWNlIGFuZCBleWUgeW9nYSwgc3RyZXNz
IG1hbmFnZW1lbnQgLi4uKQotIE90aGVyIFdvcmtzaG9wcyBpbiBwcmVwYXJhdGlvbuKApiB0byBi
ZSByZXZlYWxlZCB0byB5b3UgdmVyeSBzb29uCiAK4oCmIFdpdGggYSBzb2xpZGFyaXR5IGltcGFj
dCB3aXRoIEVtbWHDvHMgU29saWRhcml0eSAhCiAKVGhhbmtzIHRvIEVtbWHDvHMsIGJ5IHBhcnRp
Y2lwYXRpbmcgaW4gdGhlIENocmlzdG1hcyBDaGFsbGVuZ2UgMjAyMSAsIHlvdXIgY29tcGFueSB3
aWxsIGZpbmFuY2UgU29saWRhcml0eSBLaXRzIHdoaWNoIHdpbGwgYmUgZGlzdHJpYnV0ZWQgdG8g
dGhlIGhvbWVsZXNzLiBUaGFua3MgdG8geW91IGFuZCB0aGUgaW52b2x2ZW1lbnQgb2YgeW91ciBl
bXBsb3llZXMgaW4gdGhlIENoYWxsZW5nZSwgc2xlZXBpbmcgYmFncywgcGVyc29uYWwgaHlnaWVu
ZSBwcm9kdWN0cywgaG90IGJhbGFuY2VkIG1lYWxzIHdpbGwgYmUgZGlzdHJpYnV0ZWQgdG8gaG9t
ZWxlc3MgcGVvcGxlLiBUaGUgb2JqZWN0aXZlIGlzIHRvIGZpZ2h0IGFsbCB0b2dldGhlciBhZ2Fp
bnN0IGlzb2xhdGlvbiBhbmQgdG8gZm9yZ2UgYSBzb2NpYWwgYm9uZCBiYXNlZCBvbiBleGNoYW5n
ZSBhbmQgZGlhbG9ndWUuIEdldCBpbnZvbHZlZCBmb3IgYSB3aW50ZXIgb2Ygc29saWRhcml0eS4K
IApUaGVyZSB5b3UgaGF2ZSBpdCwgRXZlcnl0aGluZyB5b3UgbmVlZCB0byBrbm93LgoKU28gPyBB
cmUgeW91IHJlYWR5IHRvIGNlbGVicmF0ZSB0b2dldGhlciwgYW5kIGZlZWwgdGhlIG1hZ2ljIG9m
IGEgdW5pdGVkIENocmlzdG1hcz8KIApNb3JlIHRoYW4gZmlmdGVlbiBjb21wYW5pZXMgaGF2ZSBh
bHJlYWR5IHNhaWQgWUVTLiBBbGwgdGhhdCYjMDM5O3MgbWlzc2luZyBpcyB5b3UuCiAKV2UgYXJl
IGF0IHlvdXIgZGlzcG9zYWwgYnkgZW1haWwsIG9uIG91ciB3ZWJzaXRlIAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxp
bmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
