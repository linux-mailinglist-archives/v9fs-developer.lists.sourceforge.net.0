Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 789C051407C
	for <lists+v9fs-developer@lfdr.de>; Fri, 29 Apr 2022 04:07:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nkG24-0006Ro-9J; Fri, 29 Apr 2022 02:06:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2) (envelope-from
 <010701807311c270-0907c1c3-30e9-4767-b19f-31eda00cd57f-000000@eu-central-1.amazonses.com>)
 id 1nkG22-0006RZ-4B
 for v9fs-developer@lists.sourceforge.net; Fri, 29 Apr 2022 02:06:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yrIBgwteJXvUPm/BjTqd9XfdQ9V15OYFuySP5gwXAdM=; b=jZYYY8C5nMs58V+8bvli43FFwy
 3voCQdMhLVMOHrtUq1LZxev3CP6V2my8l0pTXxiA8eMQsmZD9IBDvkigt4K9NO/2BQXIrAoD56EI1
 /LF+YfFvQpaEUvNljgznXQjppvW/VqUs77lGsqJmGvd1uCUitovcJWj5wrPVozp1yP2w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=yrIBgwteJXvUPm/BjTqd9XfdQ9V15OYFuySP5gwXAdM=; b=Uv4MWVMajmft
 MRqwfZ67SO6n4xkMN3tf0tSyiFTmPi27lhrLWQcnoOa3oRq+zg7+oWGLq9HWy3JaO75VDREhVDgDF
 RmPLrBUWIR6HDjZ6Z57VpEjUqs0AMf3rMKWxkcmvytoSXsB5EyefT8Rhfhne0/RVPkgPqf2JQcEPe
 IEQ/k=;
Received: from b227-249.smtp-out.eu-central-1.amazonses.com ([69.169.227.249])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.94.2)
 id 1nkG1r-00DQ5s-HK
 for v9fs-developer@lists.sourceforge.net; Fri, 29 Apr 2022 02:06:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=saspfafem6lgzskpwcali7bn7m7elrbf; d=publicitateooh.ro;
 t=1651197985;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=Ua6fjlz70Z16Q+3ZW0cLtoHz1IOKVDjm+GX2w5qZ5ek=;
 b=XxAX7aXQpb0F8oHjS/DbE3MeVH7li6Lr25bpkZYzz3ued8Lr5ceZmCD46gvk9Mhf
 RgVXi7XYz3QMbVWVpie8C3TFCKvikSh1KtfOZtuT3PUyTh3Qq9ZmMG6Pb3QWJWdWfJV
 Kr3je7xQWLGa/hpgoBCFUHyOxaVh+LxWTt+TS/q7gMGGfTWQjPdZDvoPRQ5XlxagO/Z
 HkKetkNXAdUVtVcrYmiZk8cJKl6X2Nntd+O+yHIemTZMChttXrWFLG0kfEryZltHr95
 KhVkNbkuiIN5dRK+CfwqrEsai22jt18IsjrPSGcvKN+FKnY3ifK+0MXdm2eYG15qjB1
 yVn+85xS0w==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1651197985;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=Ua6fjlz70Z16Q+3ZW0cLtoHz1IOKVDjm+GX2w5qZ5ek=;
 b=Uo8IAtPWuPHg4eQyI2cxowrDrCwp6mZZsD/cEv9jdU0DtyRf3I6NpHPM2sb89olE
 R6p6oJccngD7DAmAKGPDI/35NxpjRwWRGLyYkigRjeyTGavAgSipnZBbN/CX+QcQ71b
 kvEEtcN+ykSap7GzRyVTsc/Ii5VEhSOzOOvwZNDI=
Message-ID: <010701807311c270-0907c1c3-30e9-4767-b19f-31eda00cd57f-000000@eu-central-1.amazonses.com>
Date: Fri, 29 Apr 2022 02:06:25 +0000
From: Office <office@publicitateooh.ro>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.N8GLPrwMW4DEokEt/uX8R5Dj6lDs1dpqTZ0OFMrLAAo=:AmazonSES
X-SES-Outgoing: 2022.04.29-69.169.227.249
X-Spam-Score: 3.0 (+++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  [Vizualizează asta în navigatorul tău.](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCIxMjkiLCJiY2EyYjA4ZWNmMjYi
    [...] 
 
 Content analysis details:   (3.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [69.169.227.249 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: ekogroup.com.ro]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
  0.0 T_REMOTE_IMAGE         Message contains an external image
  1.3 URI_WP_HACKED_2        URI for compromised WordPress site, possible
                             malware
X-Headers-End: 1nkG1r-00DQ5s-HK
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Super oferta! Steaguri directionale | avizate PMB
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
aUxDSXhNamtpTENKaVkyRXlZakE0WldObU1qWWlMR1poYkhObFhRKQoKW0Zhcm1lcnNNYXJrZXQt
VG9wXQoKW1B1YmxpY2l0YXRlLU9PSC1Mb2dvXShodHRwczovL2Vrb2dyb3VwLmNvbS5ybz9tYWls
cG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pFME16QXdOU3dp
Ym1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TWpraUxDSXhZ
alkzWVRVd1pURXdaR1FpTEdaaGJITmxYUSkKClsrNCAwNzUyIDc2MCA0MjddKGh0dHBzOi8vZWtv
Z3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2sm
ZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5y
WXpRaUxDSXhNamtpTENKaVl6WmpNVFV3TlRjMk1EWWlMR1poYkhObFhRKQpvZmZpY2VAcHVibGlj
aXRhdGVvb2gucm8KCltsb2dvX2Vrb2dyb3VwLXJlbW92ZWJnLXByZXZpZXddKGh0dHBzOi8vZWtv
Z3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2sm
ZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5y
WXpRaUxDSXhNamtpTENJd056UXdNVGc0TjJSalpqTWlMR1poYkhObFhRKQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KCltQUkVUVUwgQ0hJUklFSSBORUdPQ0lBQklMXShodHRwczovL2Vrb2dyb3VwLmNv
bS5ybz9tYWlscG9ldF9yb3V0ZXImZW5kcG9pbnQ9dHJhY2smYWN0aW9uPWNsaWNrJmRhdGE9V3pF
ME16QXdOU3dpYm1seGFXRjZjWE16WWpRME1HTmpaMnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4
TWpraUxDSmtNV1poTUdaaVpEVXlOVGdpTEdaaGJITmxYUSkKCltWZXppIGFpY2kgbW9kZWwgZGUg
cmVjbGFtYSBwZSBzdGFscGldKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRl
ciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNY
TXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhNamtpTENKa01XWmhNR1ppWkRV
eU5UZ2lMR1poYkhObFhRKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
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
MnMwWXpSck5EUnpPRzlqWjJOcll6UWlMQ0l4TWpraUxDSXhZalkzWVRVd1pURXdaR1FpTEdaaGJI
TmxYUSkKCi4uLnVuIG5vdSBwcm9pZWN0LCBleHB1bmVyZSBkdWJsYSwgYWNlbGFzaSBjbGllbnQK
CltDYXB0dXJhzIYgZGUgZWNyYW4gZGluIDIwMjEtMDgtMDYgbGEgMTYuNTEuMDJdKGh0dHBzOi8v
ZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xp
Y2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpa
Mk5yWXpRaUxDSXhNamtpTENJeFlqWTNZVFV3WlRFd1pHUWlMR1poYkhObFhRKQoKLi4ucHJvaWVj
dGUgcGVudHJ1IHN1ZmxldCB8IFJvbWFuaWEgbWVyaXTDowoKW0NhcHR1cmHMhiBkZSBlY3JhbiBk
aW4gMjAyMS0xMS0xNiBsYSAwOS4zNi4wNl0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBv
ZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJt
bHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE1qa2lMQ0l4WWpZ
M1lUVXdaVEV3WkdRaUxHWmhiSE5sWFEpCgpFS08gVFJBREUgQlVTSU5FU1MKX19fX19fXwpTdHJl
ZXQgRW1pbCBQYW5ncmF0dGksIG5vLjEwICs0IDA3NTIgNzYwIDQyNwpvZmZpY2VAcHVibGljaXRh
dGVvb2gucm8Kc2FsZXNAcHVibGljaXRhdGVvb2gucm8KCltmYWNlYm9va10oaHR0cHM6Ly9la29n
cm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZk
YXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZ
elFpTENJeE1qa2lMQ0kwTUdVNU56RXpabU5qTURZaUxHWmhiSE5sWFEpIFtpbnN0YWdyYW1dKGh0
dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rp
b249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRS
ek9HOWpaMk5yWXpRaUxDSXhNamtpTENJMU56RmxObVF4WVRBeU5EVWlMR1poYkhObFhRKQpbRGV6
YWJvbmFyZV0oaHR0cHM6Ly9la29ncm91cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50
PXRyYWNrJmFjdGlvbj1jbGljayZkYXRhPVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05q
WjJzMFl6UnJORFJ6T0c5aloyTnJZelFpTENJeE1qa2lMQ0kxTmpZeU1UaGhZakl3TkdJaUxHWmhi
SE5sWFEpIHwgW0FkbWluaXN0cmVhesSDLcibaSBhYm9uYW1lbnR1bF0oaHR0cHM6Ly9la29ncm91
cC5jb20ucm8/bWFpbHBvZXRfcm91dGVyJmVuZHBvaW50PXRyYWNrJmFjdGlvbj1jbGljayZkYXRh
PVd6RTBNekF3TlN3aWJtbHhhV0Y2Y1hNellqUTBNR05qWjJzMFl6UnJORFJ6T0c5aloyTnJZelFp
TENJeE1qa2lMQ0prWkRaa00yTTFOalZsWW1JaUxHWmhiSE5sWFEpCltvZmZpY2VAcHVibGljaXRh
dGVvb2gucm9dKGh0dHBzOi8vZWtvZ3JvdXAuY29tLnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2lu
dD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUwTXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdO
aloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhNamtpTENJeE56WmxNVGhoTVdZd1lUQWlMR1po
YkhObFhRKQpfX19fX19fCgpDb3B5cmlnaHQgwqkgMjAyMSB3d3cucHVibGljaXRhdGVvb2gucm8s
IEFsbCByaWdodHMgcmVzZXJ2ZWQuCgpbRmFybWVyc01hcmtldC1Cb3R0b21dCgpQcmltZXN0aSBh
Y2VzdGUgZW1haWx1cmkgZGVvYXJlY2UgdGUtYWkgaW5yZWdpc3RyYXQgcGUgc2l0ZXVsIG5vc3Ry
dSBpbiBkYXRhIGRlIDI3IGZlYiAyMDE5IGN1IGFkcmVzYSBkZSBlbWFpbCB2OWZzLWRldmVsb3Bl
ckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQuCgpbTWFpbFBvZXRdKGh0dHBzOi8vZWtvZ3JvdXAuY29t
LnJvP21haWxwb2V0X3JvdXRlciZlbmRwb2ludD10cmFjayZhY3Rpb249Y2xpY2smZGF0YT1XekUw
TXpBd05Td2libWx4YVdGNmNYTXpZalEwTUdOaloyczBZelJyTkRSek9HOWpaMk5yWXpRaUxDSXhN
amtpTENJM01XVTFZakEwTVdKaFl6Y2lMR1poYkhObFhRKQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5
ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
