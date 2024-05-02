Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDA98BA260
	for <lists+v9fs-developer@lfdr.de>; Thu,  2 May 2024 23:36:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1s2e6T-00029d-9T;
	Thu, 02 May 2024 21:36:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <bounce.L3079S42415M132@s1.arrobamail.com>)
 id 1s2e6R-00029Q-U1 for v9fs-developer@lists.sourceforge.net;
 Thu, 02 May 2024 21:36:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9Y6BSmiNUAsSuHb7Z4l2KcvHAZlXrTB9ZY4GCHxNUDE=; b=LL8gEtf3wBBrsEUODyq2YVBZv9
 1Y/+fD0jn9rsWxrIA33niiwzkcwUn/o1DgJEBCfm1X6HSd56dwlB9tyupo4SzJ9jIWyupUhT1FE5U
 mpfRfP1NPI6rkIq8boRAYRBTk9ujFuxMqgggX2vyL/uu5QFIr0CpB9FsTT6G7yHyva70=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-ID:List-Unsubscribe:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=9Y6BSmiNUAsSuHb7Z4l2KcvHAZlXrTB9ZY4GCHxNUDE=; b=e
 0SsX1qAuWgfd1R6R7N2vpItiHi4YEQEhtcLx7LBNl5MLGTkhS0vtksGuP4R6fTutS5I55BTHusDNv
 ExbDPwz1UN1m9pVVtQyXRwUhRFNRoHVmxoSzZ59cNSXV3d5cw+UIbHcCMcSTjbaicRRwZwgHQTf/c
 RaVwYIzWYoB/u4pI=;
Received: from pf-28.fleetservers.net ([190.105.146.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s2e6Q-0008A8-2X for v9fs-developer@lists.sourceforge.net;
 Thu, 02 May 2024 21:36:32 +0000
Date: Thu, 2 May 2024 16:36:18 -0500
To: v9fs-developer@lists.sourceforge.net
From: =?utf-8?Q?Jassiel_Ram=C3=ADrez?= <jassiel.ramirez@consultores-rh.com>
Message-ID: <iY0ccpDpiWWMVdXXwsrpGQLcrIiZCrykGoQyGSNHc@s1.arrobamail.com>
X-Mailer: FMMailer v3
X-Data: ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
X-Fid: eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtMTMyLTMwNzktNDI0MTUtMjY5LXMxLmFycm9iYW1haWwuY29t
X-fmbh: djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzEzMjszMDc5OzQyNDE1OzI2OQ==
X-bhid: X-bhd: 132;3079;42415
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-AntiAbuse: abuse@outservices.net
Precedence: bulk
Feedback-ID: 132:3079s42415:124931:WPservicesESP
X-Transport: AgdLcOmFm
MIME-Version: 1.0
DKIM-Signature: v=1; d=consultores-rh.com; s=fm;
 a=rsa-sha256; q=dns/txt; t=1714685778; c=relaxed/simple;
 h=Date:To:From:Reply-To:Subject:Message-ID:X-Mailer:X-Data:X-Fid:X-fmbh:List-Unsubscribe:X-AntiAbuse:Feedback-ID:List-ID:MIME-Version:Content-Type;
 z=Date:Thu,=202=20May=202024=2016:36:18=20-0500
 |To:v9fs-developer@lists.sourceforge.net
 |From:=3D?utf-8?Q?Jassiel_Ram=3DC3=3DADrez?=3D=20<jassiel.ramirez@consulto
 res-rh.com>
 |Reply-To:=3D?utf-8?Q?Jassiel_Ram=3DC3=3DADrez?=3D=20<jassiel.ramirez@cons
 ultores-rh.com>
 |Subject:Mejora=20el=20Clima=20Laboral=20con=20Evaltric
 |Message-ID:<iY0ccpDpiWWMVdXXwsrpGQLcrIiZCrykGoQyGSNHc@s1.arrobamail.com>
 |X-Mailer:FMMailer=20v3
 |X-Data:ZXx2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXR8
 |X-Fid:eGZpZC12OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQtMTMyLTMwNzk
 tNDI0MTUtMjY5LXMxLmFycm9iYW1haWwuY29t
 |X-fmbh:djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0OzEzMjszMDc5OzQyND
 E1OzI2OQ=3D=3D
 |List-Unsubscribe:<https://s1.arrobamail.com/unsuscribe.php?FormData=3Dtet
 wysrqipswreseup> |X-AntiAbuse:abuse@outservices.net
 |Feedback-ID:132:3079s42415:124931:WPservicesESP
 |List-ID:<36948:763470> |MIME-Version:1.0
 |Content-Type:multipart/alternative=3B=20boundary=3D"b1_iY0ccpDpiWWMVdXXws
 rpGQLcrIiZCrykGoQyGSNHc";
 bh=9Y6BSmiNUAsSuHb7Z4l2KcvHAZlXrTB9ZY4GCHxNUDE=;
 b=orbYlNkkkvo3bJosycCyLmoVbvv6PyguPh1twiTroO0eZI01XRGFPA8glXuvXbF7MSQ1FAi+s
 oqIjXXoWpdwCi7vgCuI1WIPZMfACAYTZlNjovLLhjN1cIV7mFrB4ZWIQnj87GURz0GcJKEemi
 p0rDLXCNXyXaHN9FYoMGOAfOE=
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  &nbsp;Hola, &nbsp; Como experto en Recursos Humanos, comprendo
    la importancia del clima laboral para el éxito de cualquier empresa. Un
   ambiente positivo mejora la productividad y la satisfacción de los empleados,
    mien [...] 
 
 Content analysis details:   (-0.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: consultores-rh.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
                             Colors in HTML
 -1.0 MAILING_LIST_MULTI     Multiple indicators imply a widely-seen list
                             manager
X-Headers-End: 1s2e6Q-0008A8-2X
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Mejora el Clima Laboral con Evaltric
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Reply-To: =?utf-8?Q?Jassiel_Ram=C3=ADrez?= <jassiel.ramirez@consultores-rh.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgoKCQoJCgoKJm5ic3A7SG9sYSwKCiZuYnNwOwoKQ29tbyBleHBlcnRvIGVuIFJlY3Vyc29zIEh1
bWFub3MsIGNvbXByZW5kbyBsYSBpbXBvcnRhbmNpYSBkZWwgY2xpbWEgbGFib3JhbCBwYXJhIGVs
IMOpeGl0byBkZSBjdWFscXVpZXIgZW1wcmVzYS4gVW4gYW1iaWVudGUgcG9zaXRpdm8gbWVqb3Jh
IGxhIHByb2R1Y3RpdmlkYWQgeSBsYSBzYXRpc2ZhY2Npw7NuIGRlIGxvcyBlbXBsZWFkb3MsIG1p
ZW50cmFzIHF1ZSB1biBjbGltYSBuZWdhdGl2byBwdWVkZSB0ZW5lciBjb25zZWN1ZW5jaWFzIGRl
c2FzdHJvc2FzLiBQb3IgZWxsbywgcXVpZXJvIHByZXNlbnRhcmxlJm5ic3A7RXZhbHRyaWMsIHVu
IHNpc3RlbWEgb25saW5lIHF1ZSBtaWRlIGVsIGNsaW1hIGxhYm9yYWwgZWZpY2F6bWVudGUsIG9m
cmVjaWVuZG8gdW4gZGlhZ27Ds3N0aWNvIHByZWNpc28gcXVlIHBlcm1pdGUgdG9tYXIgYWNjaW9u
ZXMgaW5mb3JtYWRhcyBwYXJhIG1lam9yYXIgZWwgYmllbmVzdGFyIGRlIHN1IGVxdWlwby4KCiZu
YnNwOwoKRXZhbHRyaWMgYXNlZ3VyYSBhbm9uaW1hdG8gZW4gbGFzIHJlc3B1ZXN0YXMsIGZhY2ls
aXRhbmRvIHVuIGZlZWRiYWNrIGhvbmVzdG8gZGUgbG9zIGVtcGxlYWRvcyB5IHBlcm1pdGllbmRv
IHVuIHNlZ3VpbWllbnRvIGNvbnRpbnVvIHBhcmEgYWRhcHRhciBsYXMgZXN0cmF0ZWdpYXMgZGUg
bWVqb3JhLiBJbXBsZW1lbnRhciBFdmFsdHJpYyByZXByZXNlbnRhIHVuYSBpbnZlcnNpw7NuIGVu
IGVsIGZ1dHVybyBkZSBzdSBlbXByZXNhLCBmb21lbnRhbmRvIHVuIGVudG9ybm8gZGUgdHJhYmFq
byBkb25kZSB0b2RvcyBwdWVkZW4gcHJvc3BlcmFyLgoKJm5ic3A7CgpBaG9yYSBlcyBzdSB0dXJu
byBkZSB0b21hciBlbCBjb250cm9sIGRlbCBjbGltYSBvcmdhbml6YWNpb25hbCBkZSBzdSBlcXVp
cG8uIExlIGludml0YW1vcyBhIHByb2JhciBFdmFsdHJpYyB5IGRlc2N1YnJpciB0b2RvIGxvIHF1
ZSBwdWVkZSBoYWNlciBwb3Igc3UgZW1wcmVzYSB1IG9yZ2FuaXphY2nDs24uIEhhZ2EmbmJzcDtj
bGljIGFxdcOtIHBhcmEgY29tZW56YXIgc3UgcHJ1ZWJhIGdyYXR1aXRhIG8gYmllbiBkYSBjbGlj
IGFxdcOtIHBhcmEgc29saWNpdGFyIG3DoXMgaW5mb3JtYWNpw7NuCgombmJzcDsKCkVzdGFtb3Mg
c2VndXJvcyBkZSBxdWUsIHVuYSB2ZXogcXVlIHBydWViZSZuYnNwO0V2YWx0cmljJm5ic3A7ZWwg
ZGVzZW1wZcOxbyZuYnNwO2RlIHN1IGVxdWlwbyBzZSB2ZXLDoSBtZWpvcmFkby4KCiZuYnNwOwoK
CgkKCQkKCQkJCgkJCUphc3NpZWwgUmFtw61yZXoKCgkJCUxsw6FtYW5vcyZuYnNwO3NpbiBjb3N0
bzogMDAgMSAoODgwKSAzNTEgNzkyNAoKCQkJQ2l1ZGFkIGRlIE3DqXhpY286ICg1NSkgNTAxOCAw
NTY1CgoJCQlDb2xvbWJpYSwgQm9nb3TDoTogKDU3MSkgNTgwIDAzNTEKCgkJCVJlcMO6YmxpY2Eg
RG9taW5pY2FuYTogKDgyOSkgOTU0IDgwNzcKCgkJCUd1YXRlbWFsYTogKDUwMikgMjMxNSA5ODM1
CgoJCQlFbCBTYWx2YWRvcjogKDUwMykgMjExMyA5NDIyCgoJCQlDaGlsZTogKDU2KSAyMjU4IDM1
OTI5CgoJCQlXaGF0c0FwcDogKzUyIDMzIDE2MDcgMjA4OQoJCQkKCQkJCgkJCQoJCQkKCQkKCQoK
CiZuYnNwOwoKQ2xpYyBhcXXDrSZuYnNwO3BhcmEgZGFyc2UgZGUgYmFqYS4mbmJzcDsKCgoKClBh
cmEgcmVtb3ZlciBzdSBkaXJlY2NpJm9hY3V0ZTtuIGRlIGVzdGEgbGlzdGEgaGFnYSA8YSBocmVm
PSJodHRwczovL3MxLmFycm9iYW1haWwuY29tL3Vuc3VzY3JpYmUucGhwP2lkPXRldHd5c3JxaXBz
d3Jlc2V1cCI+Y2xpY2sgYXF1JmlhY3V0ZTs8L2E+Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRl
dmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5u
ZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
