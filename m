Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFF55393EA
	for <lists+v9fs-developer@lfdr.de>; Tue, 31 May 2022 17:25:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nw3kk-0007rI-M0; Tue, 31 May 2022 15:25:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <010701811ab8d4fc-70433871-59ca-4007-a00e-37a72a9e159d-000000@eu-central-1.amazonses.com>)
 id 1nw3kj-0007r6-Qt
 for v9fs-developer@lists.sourceforge.net; Tue, 31 May 2022 15:25:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R/rkkLa/mHTtkKTYw4/+IMWUMNfysS1LZF+msyaRbUo=; b=kj9drfmWY6/FPIPHL2CxCzPs4d
 9+QNGi6QdzhjZdB/pG0GNesaq7OxCSkFBeJM0dyLMTpU5jK+27H3+cwbMSrgv3H8teC4lVvRdcibe
 DX8HVsSatwBzKY3KneVIS+kOxDDvLVYsuT0sGWB8KvHizlLykdF77jddOo1JodPtzBQI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=R/rkkLa/mHTtkKTYw4/+IMWUMNfysS1LZF+msyaRbUo=; b=GdFsKnjd5lCj
 /f7rOPEIc7/4XEeyXUcsplAj1b8hmZZt+mexP17icFxXX+PlK1AaEE2uF8+txwsMeqdPHKRCHcghg
 jw27qkfgtyArA0xIa6S4VBY7k48eE15h0EVeBu+nj/wKOO53Ecu1owXm8ybOJA3aHox8qWbS4AJvX
 NnT+Q=;
Received: from b228-111.smtp-out.eu-central-1.amazonses.com ([69.169.228.111])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.94.2)
 id 1nw3kf-00Akfo-9R
 for v9fs-developer@lists.sourceforge.net; Tue, 31 May 2022 15:25:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=saspfafem6lgzskpwcali7bn7m7elrbf; d=publicitateooh.ro;
 t=1654010729;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=V5LXgSmJ5Ci1PgMVCqoXC07DAvOG1mmUKZlKZPHLhIw=;
 b=IZjqVmkBiFPvDTSUlcNxR4DmM8vWbeu2QUNmlhzwr3q81mEgP78wVCRYtXkQ2+dj
 Km1DZqci/X7YnWk6nT7rROG1TREhQoNAyAW44SDSIqHFYCaC2qmASOd5GS71/laV5GF
 V23xD+nvoLcFx13gafff7QMTqo0V+Vq7w+LrbLM1eejWNTVGcb54GiQ/Y7CvbgXVPpy
 yERv3Aeuf/MLhtfp2YeBZPAARQDySTFsUzgXNNN+L2FXXKrAnapMs7BlYNTi+O988IS
 PVI4aUDbJ0KNpnKMPweugwIAZRhoTGrTSz8PK3YZh0RomuD0O6U+9NOTCNJl8g7pCOS
 ZvSReUYJiw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1654010729;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=V5LXgSmJ5Ci1PgMVCqoXC07DAvOG1mmUKZlKZPHLhIw=;
 b=XtmVDboQKTP5LUOmtO0DFBBY8WYaqzL58Yxq7D8/1V/piFGAXuGcQoDQlq+q+9vY
 5boycJ3eFo2O+Um/HqUFPcAFvVQpYoBLIG697VQ+adyl8pM9J15YinPcC/frSBw4w0K
 uauvGUQl0xNiGeO7IdAGptdnVmHN1KKR+M9hnRIs=
Message-ID: <010701811ab8d4fc-70433871-59ca-4007-a00e-37a72a9e159d-000000@eu-central-1.amazonses.com>
Date: Tue, 31 May 2022 15:25:29 +0000
From: Office <office@publicitateooh.ro>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.N8GLPrwMW4DEokEt/uX8R5Dj6lDs1dpqTZ0OFMrLAAo=:AmazonSES
X-SES-Outgoing: 2022.05.31-69.169.228.111
X-Spam-Score: 4.3 (++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  [Vizualizează asta în navigatorul tău.](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCIxMzMiLCIzNmJiMzNhNjdhYTIi
    [...] 
 
 Content analysis details:   (4.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: ekogroup.com.ro]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [69.169.228.111 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [69.169.228.111 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
  0.0 T_REMOTE_IMAGE         Message contains an external image
  2.5 URI_WP_HACKED_2        URI for compromised WordPress site, possible
                             malware
X-Headers-End: 1nw3kf-00Akfo-9R
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Cel mai mare brand awareness pentru compania
 ta...STEAGURILE
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
Reply-To: Office <office@publicitateooh.ro>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

W1ZpenVhbGl6ZWF6xIMgYXN0YSDDrm4gbmF2aWdhdG9ydWwgdMSDdS5dKGh0dHBzOi8vZWtvZ3Jv
dXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0
YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpR
aUxDSXhNek1pTENJek5tSmlNek5oTmpkaFlUSWlMR1poYkhObFhRKQoKW0Zhcm1lcnNNYXJrZXQt
VG9wXQoKW1B1YmxpY2l0YXRlLU9PSC1Mb2dvXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWls
cG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dp
Ym1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TXpNaUxDSmhP
VFUyT0dKaE1UTmhZak1pTEdaaGJITmxYUSkKClsrNCAwNzUyIDc2MCA0MjddKGh0dHBzOi8vZWtv
Z3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2sm
ZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5y
WXpRaUxDSXhNek1pTENJNE5XTTJaamM1TlRkbE9XUWlMR1poYkhObFhRKQpvZmZpY2VAcHVibGlj
aXRhdGVvb2gucm8KCltsb2dvX2Vrb2dyb3VwLXJlbW92ZWJnLXByZXZpZXddKGh0dHBzOi8vZWtv
Z3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2sm
ZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5y
WXpRaUxDSXhNek1pTENJeFl6Qmhaamd5TUdSaU9EQWlMR1poYkhObFhRKQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KCltQUkVUVUwgQ0hJUklFSSBORUdPQ0lBQklMXShodHRwczovL2Vrb2dyb3VwLmNv
bS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pF
ME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4
TXpNaUxDSXdNalF6TkdWbU9XTmlaV1FpTEdaaGJITmxYUSkKCltWZXppIGFpY2kgbW9kZWwgZGUg
cmVjbGFtYSBwZSBzdGFscGldKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRl
ciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNY
TXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhNek1pTENJd01qUXpOR1ZtT1dO
aVpXUWlMR1poYkhObFhRKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ09NUEFOSUEgVEEgYXJlIG5l
dm9pZSBkZSBCUkFORCBBV0FSRU5FU1MgQUdSRVNJVgpEZSBhY2VzdCBsdWNydSBzdW50ZW0gY29u
c3RpZW50aSB0b3RpLi4uCl9fX19fX18KCj4+CgpNT05UQUosIFBST0RVQ1RJRSwgTkVVVFJBTEla
QVJFIFNJIE1FTlRFTkFOVEEKCkdSQVRVSVRBKgoKX19fX19fXwpBdml6IFBNQiBwZW50cnUgZmll
Y2FyZSBzdGVhZwpQdXRlbSBtb250YSBzdGVhZ3VyaSBPUklVTkRFIGluIEJ1Y3VyZXN0aSBzaSBJ
bGZvdi4gIFBlc3RlIDEwMC4wMDAgZGUgZmV0ZSBwZW50cnUgZXhwdW5lcmUKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KCi4uLm8gcGFydGUgZGluIGdyYWZpY2lsZSBjbGllbnRpbG9yIG5vc3RyaSBwZW50
cnUgaW5zcGlyYXRpYSBUQQpbQ2FwdHVyYcyGIGRlIGVjcmFuIGRpbiAyMDIyLTAzLTAyIGxhIDEw
LjU3LjI4XShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9
dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpa
MnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TXpNaUxDSmhPVFUyT0dKaE1UTmhZak1pTEdaaGJI
TmxYUSkKCltDYXB0dXJhzIYgZGUgZWNyYW4gZGluIDIwMjEtMDgtMDYgbGEgMTYuNTEuMDJdKGh0
dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rp
b249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRS
ek9HOWpaMk5yWXpRaUxDSXhNek1pTENKaE9UVTJPR0poTVROaFlqTWlMR1poYkhObFhRKQoKLi4u
cHJvaWVjdGUgcGVudHJ1IHN1ZmxldCB8IFJvbWFuaWEgbWVyaXTDowoKW0NhcHR1cmHMhiBkZSBl
Y3JhbiBkaW4gMjAyMS0xMS0xNiBsYSAwOS4zNi4wNl0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/
bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3
TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE16TWlM
Q0poT1RVMk9HSmhNVE5oWWpNaUxHWmhiSE5sWFEpCgpFS08gVFJBREUgQlVTSU5FU1MKX19fX19f
XwpTdHJlZXQgRW1pbCBQYW5ncmF0dGksIG5vLjEwICs0IDA3NTIgNzYwIDQyNwpvZmZpY2VAcHVi
bGljaXRhdGVvb2gucm8Kc2FsZXNAcHVibGljaXRhdGVvb2gucm8KCltmYWNlYm9va10oaHR0cHM6
Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1j
bGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5
aloyTnJZelFpTENJeE16TWlMQ0ppWkRGak9UVXlNemN6TVRJaUxHWmhiSE5sWFEpIFtpbnN0YWdy
YW1dKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFj
ayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZ
elJyTkRSek9HOWpaMk5yWXpRaUxDSXhNek1pTENJNVltSmpOR0ZrTTJFek9UVWlMR1poYkhObFhR
KQpbRGV6YWJvbmFyZV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVu
ZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellq
UTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE16TWlMQ0ptWkdJeE9UVXlPV0pqTWpR
aUxHWmhiSE5sWFEpIHwgW0FkbWluaXN0cmVhesSDLcibaSBhYm9uYW1lbnR1bF0oaHR0cHM6Ly9l
a29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGlj
ayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloy
TnJZelFpTENJeE16TWlMQ0ptWWpVMU56TmtaalV5Wm1FaUxHWmhiSE5sWFEpCltvZmZpY2VAcHVi
bGljaXRhdGVvb2gucm9dKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZl
bmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZ
alEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhNek1pTENKbU5EY3lNMlppTW1KaVpH
SWlMR1poYkhObFhRKQpfX19fX19fCgpDb3B5cmlnaHQgwqkgMjAyMiB3d3cucHVibGljaXRhdGVv
b2gucm8sIEFsbCByaWdodHMgcmVzZXJ2ZWQuCgpbRmFybWVyc01hcmtldC1Cb3R0b21dCgpQcmlt
ZXN0aSBhY2VzdGUgZW1haWx1cmkgZGVvYXJlY2UgdGUtYWkgaW5yZWdpc3RyYXQgcGUgc2l0ZXVs
IG5vc3RydSBpbiBkYXRhIGRlIDI3IGZlYiAyMDE5IGN1IGFkcmVzYSBkZSBlbWFpbCB2OWZzLWRl
dmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQuCgpbTWFpbFBvZXRdKGh0dHBzOi8vZWtvZ3Jv
dXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0
YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpR
aUxDSXhNek1pTENJMlltTmxPR000TVdNM1pHRWlMR1poYkhObFhRKQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBs
aXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
