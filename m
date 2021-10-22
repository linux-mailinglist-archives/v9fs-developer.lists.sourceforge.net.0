Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0FD437090
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 05:50:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mdlZj-0006DU-8P; Fri, 22 Oct 2021 03:50:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <0107017ca61f0965-53f91d99-a563-4ce0-8cc0-ffdc796b0f6e-000000@eu-central-1.amazonses.com>)
 id 1mdlZh-0006DF-KL
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 03:50:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Unsubscribe:Content-Type:MIME-Version:To:
 Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Qdg2u6eS/wNGkRb1E3JJeXxVyuEj+JCLGCsDYGp1pPw=; b=MssRgdZWHosLPadl+CyTN2Q8hy
 JbfdmIE+4+cUnOkIBx1fC1/Nm44JHmrQTjy8W8bTHvgC17FB1DWBVXpSLTBrJuzo2GP8SmB0zaV1Z
 WfjTg8dE+qysBNVOmDn4z6Bn09QxLEuv0uLVvZzzSsduZMmcJUCbYSnYMzYVtxShdZ1g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:Subject:Date:
 Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=Qdg2u6eS/wNGkRb1E3JJeXxVyuEj+JCLGCsDYGp1pPw=; b=F3Rmqh70XGnA
 nlGxddMavOVz6uNbeqIzIDMf5wGLJPpJqCew6ip+1k2n9Ig4fzLeR+pG67dmf4do65HKVb98+AM67
 0pnBxWzS8DKI80NdXPlTcOn31//ievGvEMbqiM7vF/WBxgW62UFdPoG4syYM2PD6roXsnSnukCFwf
 gYpHc=;
Received: from b227-249.smtp-out.eu-central-1.amazonses.com ([69.169.227.249])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-SHA256:128) (Exim 4.92.3)
 id 1mdlZf-00BIMA-8r
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 03:50:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=chhfa7u27a4tep4llzorwkggr6ld47ie; d=eko.com.ro; t=1634874624;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe;
 bh=Z4/NHOjPEfGkEBqUVe7cdB/2hWMrE7FtEThSBVtDTZk=;
 b=DaXVEIK68ZwvKyjxoYgW0xPIZHYfxxRhy7rrcDhDRs140ZQATdRGeBK5r3Uk+Yq7
 fBVOCKTWINMJ48ipUIiDDrQa9InH8W+wNfwdUogQVybZ8L+IauwX7c+3LgH+8ZI916W
 fFeXnr+DzvuuN7D7Zb5ZJxkbHa6x3BDd0h1BcTPosoXjKH/gCHVqzmmKa//tb2LwMs3
 aeU4dHW/OfKIUIWbwqgYur6RwhuXeQWqyolHwD62Z/YNpxF9holyJHq69pbR1kVhUAR
 Xr+zamWiTANNVmkDhcd8s9mqS8fPzZj/Jtuia7HhDBA51+qV/R9hFRoEpEMMH97/kfZ
 5z599nE2qg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=54ecsf3zk7z4mwxwwox7z7bg6e5gwjsz; d=amazonses.com; t=1634874624;
 h=Sender:Message-ID:Date:Subject:From:Reply-To:To:MIME-Version:Content-Type:List-Unsubscribe:Feedback-ID;
 bh=Z4/NHOjPEfGkEBqUVe7cdB/2hWMrE7FtEThSBVtDTZk=;
 b=fP4+8uCKSjoWSEUDIISPnL7GyREkye+g55ixi+bQop0dpeFE6GZkQw8dPOhk1Geq
 rGs1fZOted9lZfbaMl9exr6M4wEO+xaEwVR8UEn+gNkVjeKI0kxJVsjpYd7lKSti441
 s8YwkLyL5fEPSWl3ZeuJ1eWKUsqnQy2kwEjgYEpQ=
Message-ID: <0107017ca61f0965-53f91d99-a563-4ce0-8cc0-ffdc796b0f6e-000000@eu-central-1.amazonses.com>
Date: Fri, 22 Oct 2021 03:50:24 +0000
From: Office <office@eko.com.ro>
To: "" <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Feedback-ID: 1.eu-central-1.N8GLPrwMW4DEokEt/uX8R5Dj6lDs1dpqTZ0OFMrLAAo=:AmazonSES
X-SES-Outgoing: 2021.10.22-69.169.227.249
X-Spam-Score: 6.5 (++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: [FarmersMarket-Top]
 [eko-med](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI0NCIsIjg4OTVmM2FlODRlMCIsZmFsc2Vd)
 PESTE 500 MILIOANE DE PRODUSE ANTI-COVID 19 VANDUTE IN TOATA EUROPA 
 Content analysis details:   (6.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: eko-med.ro]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.169.227.249 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
 blocklist [URIs: eko-med.ro]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 0.0 T_KAM_HTML_FONT_INVALID Test for Invalidly Named or Formatted
 Colors in HTML
 2.5 URI_WP_HACKED_2        URI for compromised WordPress site, possible
 malware
X-Headers-End: 1mdlZf-00BIMA-8r
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Oxiometre 23 lei+tva, 10.000 buc pe stoc
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
Reply-To: Office <office@ekogroup.ro>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

[FarmersMarket-Top]

[eko-med](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI0NCIsIjg4OTVmM2FlODRlMCIsZmFsc2Vd)

PESTE 500 MILIOANE DE PRODUSE
ANTI-COVID 19
VANDUTE IN TOATA EUROPA

Oferta noastra cuprinde:
- produse anti-covid 19
- dispozitive medicale avizate MS
- gama Higyenium
_____
OFFICE@EKOGROUP.RO
OFFICE@EKO-MED.RO
+4 0771 675 240

[iamge1](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI0NCIsIjg4OTVmM2FlODRlMCIsZmFsc2Vd)

EKOGROUP.RO is an international TRADE company with areas of action in different regions of the world.
Ask for a price quote and you will be answered in a maximum of 48 hours.

[teste covid](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI0NCIsIjFiOGY5NjMyZWJiYiIsZmFsc2Vd)

12 lei, tva zero
ORICE TEST anti-covid 19

[Negociaza preturile telefonic](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI0NCIsIjFiOGY5NjMyZWJiYiIsZmFsc2Vd)

[Masca medicala](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI0NCIsIjFiOGY5NjMyZWJiYiIsZmFsc2Vd)

0,15 lei+tva
ORICE MASCA medicala

[Negociaza preturile telefonic](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI0NCIsIjFiOGY5NjMyZWJiYiIsZmFsc2Vd)

[masca medicala](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI0NCIsIjFiOGY5NjMyZWJiYiIsZmFsc2Vd)

23 lei + tva
ORICE PRODUS covid 19

[Negociaza preturile telefonic](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI0NCIsIjFiOGY5NjMyZWJiYiIsZmFsc2Vd)

[Higenyum](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI0NCIsIjg4OTVmM2FlODRlMCIsZmFsc2Vd)

Cere oferta Higenyum

[Negociaza preturile](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI0NCIsIjg4OTVmM2FlODRlMCIsZmFsc2Vd)

[Produse covid](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI0NCIsIjg4OTVmM2FlODRlMCIsZmFsc2Vd)

Cere oferta completa

[Negociaza preturile](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI0NCIsIjg4OTVmM2FlODRlMCIsZmFsc2Vd)

[Produse medicale](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI0NCIsIjg4OTVmM2FlODRlMCIsZmFsc2Vd)

Orice aparat medical

[Cere oferta pe mail](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI0NCIsIjg4OTVmM2FlODRlMCIsZmFsc2Vd)

[eko-med](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI0NCIsIjg4OTVmM2FlODRlMCIsZmFsc2Vd)

[facebook](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI0NCIsImM2Y2MxMjdhNWVkYSIsZmFsc2Vd) [instagram](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI0NCIsIjg5MTI5ZTM1NzZmNiIsZmFsc2Vd)
[Unsubscribe](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI0NCIsIjgyM2JmMmJlYzNmOSIsZmFsc2Vd) | [Manage your subscription](https://ekogroup.com.ro?mailpoet_router&endpoint=track&action=click&data=WzE0MzAwNSwibmlxaWF6cXMzYjQ0MGNjZ2s0YzRrNDRzOG9jZ2NrYzQiLCI0NCIsIjQyNDY0YmVmY2ExNyIsZmFsc2Vd)
______
office@ekogroup.ro
+4 0771 675 240

[FarmersMarket-Bottom]

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
