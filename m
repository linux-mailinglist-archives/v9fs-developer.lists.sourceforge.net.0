Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9876F1A27AA
	for <lists+v9fs-developer@lfdr.de>; Wed,  8 Apr 2020 19:03:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jME6n-0004VC-2z; Wed, 08 Apr 2020 17:03:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <bounces+15698516-1185-v9fs-developer=lists.sourceforge.net@sendgrid.net>)
 id 1jME6l-0004V5-Sr
 for v9fs-developer@lists.sourceforge.net; Wed, 08 Apr 2020 17:03:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Subject:Message-ID:To:Reply-To:
 Mime-Version:From:Date:Content-Type:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AUBt7kpEjoUM1g/svxd1B0K8vPlIxLwljzvu3ho9t60=; b=dSrmgFv0th0yw4IrUvq1bOZVF8
 cY0nhTO6O3DZ4KZBDD5h12NjbZu8Bu01UrIUQhJv38DaT6DSCDaYfA+SzLGNYh2UNIplcm4DnogO9
 8T2UQJTO5kXd3xd4yyDPYSK7rL9weX/8Sk9tOLGZnAojQT/q2o2JpSuf0qzQjIKP5S0E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Subject:Message-ID:To:Reply-To:Mime-Version:From:Date:
 Content-Type:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AUBt7kpEjoUM1g/svxd1B0K8vPlIxLwljzvu3ho9t60=; b=A3WGu5g4/cLyHr1t+dtBwVtyUQ
 dC9zDJSxUk93GKZTynlwtkyd50mtR82uQvrIGey5NADDIZshnTugwDZSdoGKYR4HIXic0EQGS7ZNZ
 ILfSqqTifbjQuHtoMJGGpccIqfJ3ULdifvM3lN/c8IgQNMoOACuZzdoWfua9iq2nunXY=;
Received: from [149.72.69.17] (helo=wrqvqrkk.outbound-email.sendgrid.net)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jME6k-007xEM-CP
 for v9fs-developer@lists.sourceforge.net; Wed, 08 Apr 2020 17:03:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sendgrid.net; 
 h=content-type:from:mime-version:reply-to:to:subject:list-unsubscribe; 
 s=smtpapi; bh=AUBt7kpEjoUM1g/svxd1B0K8vPlIxLwljzvu3ho9t60=; b=HQ
 bLTKLNuL9hVZHupFtb0z0oIyfYamw8tHc+v28xu3Y764XB0QgUjtERiKR1gB55z8
 OBJ/WSG+fCbi1+OkTd9PqE7OrpOX6Z/bkXdd2JPMb11nGcanvfqlwjuXUDCHZEzz
 nNx8fNogGP0EcFiPZx1e88rg6aLjcrWku/tm97yCs=
Received: by filter0833p1iad2.sendgrid.net with SMTP id
 filter0833p1iad2-778-5E8E0110-E
 2020-04-08 16:51:28.422589299 +0000 UTC m=+583176.653196467
Received: from MTU2OTg1MTY (unknown)
 by ismtpd0087p1mdw1.sendgrid.net (SG) with HTTP id SKkkshZ_R9u2TC_dRPHZQg
 Wed, 08 Apr 2020 16:51:28.350 +0000 (UTC)
Date: Wed, 08 Apr 2020 16:51:30 +0000 (UTC)
From: "EE" <ee@eemalggc.com>
Mime-Version: 1.0
To: v9fs-developer@lists.sourceforge.net
Message-ID: <SKkkshZ_R9u2TC_dRPHZQg@ismtpd0087p1mdw1.sendgrid.net>
X-SG-EID: N1XBR1EmuL1ry2MK5urCrs2kFFnNuJB52KRPo0MACB4JbFq2V7WONv2GIdvRCchK4sXC9hJnUcTl6W
 jBLBXqj5VIHo02b7svThvw44zzUaZEh4Ai0vw6Sy47smRyjclkoteYDJY+U8O0l0CXSxRHy1E2g6iW
 qd63T89qY2r1p3lfaLaeMT5QKvfOMc0jsgwFvvwVNrtxxEtpYisKObwb8jgC9j6fZ3asOX8J+t/OkC
 0=
X-SG-ID: mcTyqcYTtmn56LU3ATD1f2pwJ72ayt/l2FdvOsKWdE1EKXcIM5PpFkq4+MkTLEUNRCr0lCKnAWg4/5
 t7evMt35IAEcK4XXtfZGPgkR8T46hNnkJJZ1tmVTGQ6SMZytIhJKPpKYn/BojDn9u/jlrQ4gzLOQ8k
 4bpzPBJD52AzV8cR8ZVrG6GMIRsCTKmpGTUTo7OA78nwBR7YnWkwjscYLtK6daYur39UGcwD6tTqnJ
 JOnzbMqvxnI+7+3OKbNm1mw1z7b/tAyQquKv8+yWqrjAdoq0IiCj26N2OGSam/zqEuLzdi+nbWYkMI
 /r0/2+GHX9z5kjYK9fEY66mMmwHer4YZD98B+0rfxu5OsK8AAsnxLyAJXMckb2u+PMCGLSrt3ma6Md
 F+psmgKkPnoidOCpC1SQhpy0g5e8EnfUhTZd75YT0ANa3+2uv+fFDTKBvnpdo39D92lkUNCpsaaG4D
 3w==
X-Spam-Score: 2.0 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ee.co.uk]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_IMAGE_RATIO_06    BODY: HTML has a low ratio of text to image area
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jME6k-007xEM-CP
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] View Bill - err
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
Reply-To: ee@eemalggc.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SnVzdCB0byBsZXQgeW91IGtub3csIHdlJ3JlIHdvcmtpbmcgb24gZml4aW5nIHRoaXMuCgpUaGUg
YmVzdCB3YXkgdG8gdXBkYXRlIGRldGFpbHMgaXMgdG8gbG9nIG9uIHRvIHlvdXIgRUUsICpsb2dp
biBub3cgPiogKCBodHRwczovL2VlLmNvLnVrICkKCllvdSBjYW4gYWxzbyAqdmlldyBiaWxsaW5n
KiAoIGh0dHBzOi8vZWUuY28udWsgKSB0byBtYWtlIHN1cmUgeW91ciBhY2NvdW50IGRldGFpbHMg
YXJlIGNvcnJlY3QgYW5kIGtlZXAgeW91ciBhY2NvdW50IHNhZmUuCgpUaGFua3MsCipUaGUgRUUg
VGVhbSoKCsKpIDIwMjAgRUUgTElNSVRFRAoKRUUgTGltaXRlZCBSZWdpc3RlcmVkIE9mZmljZTog
RUUsIDEwIEdsYXNzb24gQ291cnQgVmljdG9yaWEgUm9hZCwgUGVucml0aCwgIApBbGwgdGhpcyBp
bmZvcm1hdGlvbiB3YXMgY29ycmVjdCBvbiB0aGUgZGF0ZSB3ZSBzZW50IHRoaXMgZW1haWwgVW5z
dWJzY3JpYmUuICggIGh0dHBzOi8vdTE1Njk4NTE2LmN0LnNlbmRncmlkLm5ldC9hc20vdW5zdWJz
Y3JpYmUvP3VzZXJfaWQ9MTU2OTg1MTYmZGF0YT1yOEs1MnlPRjJnUTFBN2NNc2VxX0NqRUtfanot
ZFhWckdNcjRVam5nTDNPVnRMdG5uVmlxTThpbVhYLWVKSnpheWdGNjhuejM0eTNmTGtwbkpDMTFT
TGlESTk5YWgyamJKNUNVbkUtbmJxWWFMZ0dCNWppbkFKV1RkbXRmQkJUUHIzR0hvNVI1TFczLWNp
dFFRb190cF9oN0l1T3JjWDBqOHkySmxjMGRmeTJ3SVRXX0cwUHdncE1qVmJXc3NPZXFTNVlEU0Vp
Y05JQzJScEVJd1dVMno1anlzZDNZOXZ3dU5BaHRTWlhwa1gxd3NkbUx2QU1lSkV4LVRqN1I3eExW
R1drclNZbHBxb3lmUGRnZzRXZGRrZ1lhNU5XNjNDaEFfZFZGSDVrNk5vSUpEZGZoR29ERXhrQWxn
VENObGpIYTZVNGNVLWExcm9yako4aTkxM2xZWV9HczdNZzZGSFlLajZ6UUk3TFF6RXg1VDdmc0pO
U2VOSkNYYVQwOWxuOS1SdmZuR3hzN253TGtmbkx2YUViVVFkSE1lcXptQWJvdEYwSDdGTzJXRGZk
RGFWclpOVHB0a2JCeWJTNE9OQXhBTmMtSTBtY0piTkdJZ1hNakdlV3AwdW53c3h2TEJ5V051VU1n
Q2lNa25FZ2RWSHlRUXVGQ2k0cnJWdGd5Z2Nkb3BZZDQ4LV9OSFdqUFQ4OVRfcmVkU2J2V1RsM3Yz
Wi1XYmtiUVpDeWRSWHFhQk9Ud1lzMGZwazZOZlhQRlA0SkhjeklWV0FYUWl1ZlFOTkw2UjNmaVE2
YV9GVVd5SzJFZUo1QXNFaTdlZW43czhPVnZLeURIZDZVOW1sN1VSTVRuSTdjLTdOS0R6NmktRnJZ
cmtQRTZ0NDBQLWlIUE9XRlZtN3VqdkZHa1hWblNvdG0yQVNabGxJcXZ0R0VmNkFncUo0ZjgweGdh
eVhpYWUzUHRaRW9MYkk2YmxtakowX21VWDF2WlEydVUxQUNTeHRsdUhNOWhuVTJkUlJrYmRfNWdC
Yl82S2VVdWUtcm02bEJCSkw4YkhzWXJqa2YwTG9la2ltS213aTBXOVhhVmctenRKMm9FZzl6dDAx
SHZzb1VYcWZmVlVjUm9WSmwwc00zdWZ3RDYwUURNajFqUzhaeXpabmt6bXg3WWRseWNtcFRnMGpm
MnBIR3FyOHJYRnlVMiAgKQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
