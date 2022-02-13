Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 69FF14B3AB4
	for <lists+v9fs-developer@lfdr.de>; Sun, 13 Feb 2022 11:00:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nJBg8-0002NE-Dl; Sun, 13 Feb 2022 10:00:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <0107017ef2868ae9-e538efc1-e4d9-43a9-a145-7c20ad387675-000000@eu-central-1.amazonses.com>)
 id 1nJBg7-0002N6-Bd
 for v9fs-developer@lists.sourceforge.net; Sun, 13 Feb 2022 10:00:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bgaNOGCgfGKmtxZYuBxSGRHa7mmi5Oxa6h7J0jLP80g=; b=G/aDjiQcZ4cH95IzFIJKXVgmxa
 SsUfLWjCB4J8UsNS5nvkjs0S7PcLmdZZ4PB2/VRgG+UbZd3qtfSRSm/B3dNsguEmZaRuXAQpH9ce/
 XGW+qeFBqRUzKG847Nrv8xSouqFj2GqODl4ElTGzYFcXZXWSABZ/CbrqUaERL/f4o3B8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=bgaNOGCgfGKmtxZYuBxSGRHa7mmi5Oxa6h7J0jLP80g=; b=mFnGj9B7CFQh
 /eSgko17hK+9/OFyzDZyjoL0Lq+mSi9qQcNo9d90bI9AmkWJReGz4XAiQMyq4qXh9s/q8aqdnTk42
 cRKds+kHWKATsjSgmwYT+xv0u/GayjxEz/394GxlgFq1pGP3RsSiSamnfgJ0mkVF5GtbgUdMuxdwp
 ODl9g=;
Received: from b227-249.smtp-out.eu-central-1.amazonses.com ([69.169.227.249])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.94.2)
 id 1nJBg1-0006hR-CV
 for v9fs-developer@lists.sourceforge.net; Sun, 13 Feb 2022 10:00:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=chhfa7u27a4tep4llzorwkggr6ld47ie; d=eko.com.ro; t=1644746410;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=yRL6Om0LzOTuLwKpAokMhb7sZOu7+cS5FSFOSg9tWDs=;
 b=ZjCiyfsRg5pK4yrvcra6IjhEN41GNYHM/BMNnfafBQAxRqB+KkrVxfxOvNolgYIg
 YCiaUKVxnezj9YhhCmmRukqBGl+9SFcsnaM5sAdz0ryXJqsNtMNIaJVet9N2sWC/tfY
 rQp8saJ6vS1icHUQI96VDgbhobYcRCS+H2OEXrZB2fDy0HNH76Qm/xXML2I+ARf7kJq
 1T9z6ZJMKjfbuLWh396UtyR2wjEsniHvbpDOfVvT33LWlKINothWRo3OAgLoYTxgLI9
 GT8fmicspwAKenu60c1/D+OCe4n4Ez4U+Vc7BKP1V0bmJoRi9oa/4X0KQxiaY91+CTK
 A1nxz6DsQg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1644746410;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=yRL6Om0LzOTuLwKpAokMhb7sZOu7+cS5FSFOSg9tWDs=;
 b=OQdgPyeYAy+UWHiIMJoy0t4qhNyh8nvAkBqj3Owi4881UqS8OeCSFpaytep6J3z5
 Q0CR4MAKRU+IgBSjJWjoNxcrE6kCEvt6TF2urx8La/GdBQcs6nkSJWp42qTN6WxL0uv
 caKduGzSaqQsq8Ykue2xg0sMJ20/mTiNfodTRwEs=
Message-ID: <0107017ef2868ae9-e538efc1-e4d9-43a9-a145-7c20ad387675-000000@eu-central-1.amazonses.com>
Date: Sun, 13 Feb 2022 10:00:10 +0000
From: Office <office@eko.com.ro>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.N8GLPrwMW4DEokEt/uX8R5Dj6lDs1dpqTZ0OFMrLAAo=:AmazonSES
X-SES-Outgoing: 2022.02.13-69.169.227.249
X-Spam-Score: 1.8 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Valentin | 0723 179 502 Cere detalii si poze pe whatsapp
 DIRECT PROPRIETAR 
 Content analysis details:   (1.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.169.227.249 listed in list.dnswl.org]
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
 Colors in HTML 0.0 LOTS_OF_MONEY          Huge... sums of money
 0.0 T_REMOTE_IMAGE         Message contains an external image
X-Headers-End: 1nJBg1-0006hR-CV
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] De vanzare | VILA PIPERA Mobilata si utilata
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

VmFsZW50aW4gfCAwNzIzIDE3OSA1MDIKCkNlcmUgZGV0YWxpaSBzaSBwb3plIHBlIHdoYXRzYXBw
CgpESVJFQ1QgUFJPUFJJRVRBUgoKQk1XIFg2IE01MGQgMzgxY3AgMTYxLjAwMCBrbS9yZWFsaQoK
VmVyaWZpY2Egc2VyaWE6IFdCQUtWNjEwMzAwRzcxMjcxIHwgRlVMTCBPUFRJT04KCltDYXB0dXJh
zIYgZGUgZWNyYW4gZGluIDIwMjItMDItMTIgbGEgMTAuMDAuNDRdCgotIERhdGEgcHJpbWVpIGlu
bWF0cmljdWxhcmkgMTEvMDUvMjAxNSB8IFByaW11bCBwcm9wcmlldGFyCi0gIENpbGluZHJlZSAy
OTkzIHwgMzgxIENQIHwKCjM0Ljk5OSBldXJvCgpbQ2FwdHVyYcyGIGRlIGVjcmFuIGRpbiAyMDIy
LTAyLTEyIGxhIDEwLjAxLjUwXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0
ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZj
WE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TURnaUxDSTROREF4T1dNeFl6
RTVZV1VpTEdaaGJITmxYUSkKCltibXddKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0
X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4
YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhNRGdpTENJNE5EQXhP
V014WXpFNVlXVWlMR1poYkhObFhRKQoKVmlsYSB0aXAgRHVwbGV4IGluIFBpcGVyYQoKRElSRUNU
IFByb3ByaWV0YXIgfCBzZSB2aW5kZSBtb2JpbGF0YSBzaSB1dGlsYXRhCgoyNDkuOTk5IGV1cm8K
ClArMUUrTQoKMTE1bXAgc3VwcmFmYXRhIHV0aWxhCjIxMCBtcCBzdXByYWZhdGEgdGVyZW4KMjAw
NiBhbiBjb25zdHJ1Y3RpZQoKW0NhcHR1cmHMhiBkZSBlY3JhbiBkaW4gMjAyMi0wMi0xMiBsYSAw
OS40OS4wMF0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50
PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05q
WjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE1EZ2lMQ0prTWpZMFl6TmtabU0zWXpVaUxHWmhi
SE5sWFEpCgpbQ2FwdHVyYcyGIGRlIGVjcmFuIGRpbiAyMDIyLTAyLTEyIGxhIDA5LjU0LjIwXQoK
W0RlemFib25hcmVdKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRw
b2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEw
TUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhNRGdpTENJeE1qTm1NV0UyWWpsbE5qa2lM
R1poYkhObFhRKQpbQWRtaW5pc3RyZWF6xIMtyJtpIGFib25hbWVudHVsXShodHRwczovL2Vrb2dy
b3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRh
dGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6
UWlMQ0l4TURnaUxDSXpaR001TmpWbFpUYzBZMlVpTEdaaGJITmxYUSkKClZhbGVudGluIHwgMDcy
MyAxNzkgNTAyCkNlcmUgZGV0YWxpaSBwZSB3aGF0c2FwcAoKW01haWxQb2V0XShodHRwczovL2Vr
b2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNr
JmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJO
cll6UWlMQ0l4TURnaUxDSmxPREJoTURreE9XRm1NelFpTEdaaGJITmxYUSkKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxp
bmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
