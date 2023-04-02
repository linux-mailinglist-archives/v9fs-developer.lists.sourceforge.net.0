Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D39546D3513
	for <lists+v9fs-developer@lfdr.de>; Sun,  2 Apr 2023 02:37:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pilie-0007M3-Gq;
	Sun, 02 Apr 2023 00:37:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@kernel.org>) id 1pilic-0007Lx-L5
 for v9fs-developer@lists.sourceforge.net;
 Sun, 02 Apr 2023 00:37:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KROyfT1B5JOqfF5LVrgadF+tVPAtWa0hfhnAK/n4fT0=; b=S2HHniKI6P35gKMKXoy6QMe1Lz
 LJG8kAmyXRvEO8EtDCGLVO4RqCyQM798sV7IyRP2evP6GDc9fO1cdA6xHgVvrBvDa6uObg/GnATmV
 5b2b71AmpyNCaKCACp/OTRRE9bHzo20OudXfyiTbnEbd/LNGHWRbjpPjS0xPu+8RvAzo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KROyfT1B5JOqfF5LVrgadF+tVPAtWa0hfhnAK/n4fT0=; b=IgJr/psrhNNVaGwrZ+Ud9ikSAz
 osJkFJHqwFblVXEuqPDcLpSfiU+PR96HQ1Cgejj44aHTUgxUu7ejFEErlEnugTFmzObLnDkU882qO
 8ypK5PPutJNIymmrlkzj+FwFLdm5C/RRbvgh/sVAbHjIfbcwln8DzIXt7pPr5aUJuMZQ=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pilib-00CMGL-25 for v9fs-developer@lists.sourceforge.net;
 Sun, 02 Apr 2023 00:37:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5825560A13
 for <v9fs-developer@lists.sourceforge.net>;
 Sun,  2 Apr 2023 00:37:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B78A0C4339B
 for <v9fs-developer@lists.sourceforge.net>;
 Sun,  2 Apr 2023 00:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1680395823;
 bh=g36iodHELiE84Hchrb3SuzR2bPv+F3xB7NDd76qJRsQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ns6LrNoeNFJKAITRa/nkUthFm7zQt2klZrjNN6PDXizHib8nnZJ/3uRMagGmTtKDo
 zSevmLzf9lfjIWtUY/YlyTHnfx6WzvNTBXC/QviLl0Iisexm5teHeZMz+3N/YWnC/T
 zWMBl5CWruOHuWpMf0x46Ia+Hlznk/xUbg6pmJxy/9uuFEvXeBz6RfMioCqFyeZtRe
 XaCrbymZyofzU+QSAMZOve/SXyI02Iu1dhCzS+tClhmaU6fZBZ7nfpvI78xrrbPm6R
 BFZnI4M8tBvFh8tPuy+DnVwrzjnD0KFXj0V5wRf2FqhD2at+wIt5qeI3Q7wBsunC5D
 EDg+cSNnrxA2g==
Received: by mail-yb1-f179.google.com with SMTP id p203so31166324ybb.13
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 01 Apr 2023 17:37:03 -0700 (PDT)
X-Gm-Message-State: AAQBX9fZOLaaNT3pVQLzF0axjFVW+WLZym9M8Vua9bCmaYBQddqNBkvR
 5CfgKX0c0OKvgQefU8Hwydh1TihqI0IkbHAars8=
X-Google-Smtp-Source: AKy350aT15/GENEwtXQcjprcmQpYLuAfOY2SdA8HuJGuQco8gz9LBnU65797sB9lwxdJIIMm+2A2v39a7ct73BshRPE=
X-Received: by 2002:a05:6902:18d5:b0:b75:3fd4:1b31 with SMTP id
 ck21-20020a05690218d500b00b753fd41b31mr21166579ybb.1.1680395822871; Sat, 01
 Apr 2023 17:37:02 -0700 (PDT)
MIME-Version: 1.0
References: <20230401-ericvh-fix-maintainers-v1-1-e3c535b2b5cf@kernel.org>
 <ZCibRa/WlySRnSF4@codewreck.org>
In-Reply-To: <ZCibRa/WlySRnSF4@codewreck.org>
From: Eric Van Hensbergen <ericvh@kernel.org>
Date: Sat, 1 Apr 2023 19:36:52 -0500
X-Gmail-Original-Message-ID: <CAFkjPT=mGXbvUVw7VDLXsi+SUFQugMBXLDmZU5sC_eV1VB3s0A@mail.gmail.com>
Message-ID: <CAFkjPT=mGXbvUVw7VDLXsi+SUFQugMBXLDmZU5sC_eV1VB3s0A@mail.gmail.com>
To: asmadeus@codewreck.org
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thanks. - updated in my branch to remove the duplication.
 This was my first attempt at b4, the documentation / cache-arguments rework
 was the second (couldn't figure out a way to link it back to the original
 stream). Need to get more savvy with the maintaine [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pilib-00CMGL-25
Subject: Re: [V9fs-developer] [PATCH] Update email address and mailing list
 for v9fs
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
Cc: lucho@ionkov.net, v9fs-developer@lists.sourceforge.net,
 v9fs@lists.linux.dev, linux_oss@crudebyte.com, rminnich@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

VGhhbmtzLiAtIHVwZGF0ZWQgaW4gbXkgYnJhbmNoIHRvIHJlbW92ZSB0aGUgZHVwbGljYXRpb24u
CgpUaGlzIHdhcyBteSBmaXJzdCBhdHRlbXB0IGF0IGI0LCB0aGUgZG9jdW1lbnRhdGlvbiAvIGNh
Y2hlLWFyZ3VtZW50cwpyZXdvcmsgd2FzIHRoZSBzZWNvbmQgKGNvdWxkbid0IGZpZ3VyZSBvdXQg
YSB3YXkgdG8gbGluayBpdCBiYWNrIHRvCnRoZSBvcmlnaW5hbCBzdHJlYW0pLiAgTmVlZCB0byBn
ZXQgbW9yZSBzYXZ2eSB3aXRoIHRoZSBtYWludGFpbmVyIHNpZGUKb2YgaXQgdG9vLgoKICAgICAg
ICAtZXJpYwoKT24gU2F0LCBBcHIgMSwgMjAyMyBhdCA0OjAw4oCvUE0gPGFzbWFkZXVzQGNvZGV3
cmVjay5vcmc+IHdyb3RlOgo+Cj4gRXJpYyBWYW4gSGVuc2JlcmdlbiB3cm90ZSBvbiBTYXQsIEFw
ciAwMSwgMjAyMyBhdCAwNzowNjoyNVBNICswMDAwOgo+ID4gV2UndmUgcmVjZW50bHkgbW92ZWQg
dGhlIG1haWxpbmcgbGlzdCB0byBsaXN0cy5saW51eC5kZXYgdG8gbW92ZSBhd2F5Cj4gPiBmcm9t
IHRoZSBzb3VyY2Vmb3JnZSBpbmZyYXN0cnVjdHVyZS4gIFRoaXMgYWxzbyB1cGRhdGVzIHRoZSB3
ZWJzaXRlCj4gPiBmcm9tIHRoZSAobm8gbG9uZ2VyIHY5ZnMgcmVsZXZhbnQ/KSBzd2lrLm5ldCBh
ZGRyZXNzIHRvIHRoZSBnaXRodWIKPiA+IGdyb3VwIHdoaWNoIGNvbnRhaW5zIHBvaW50ZXJzIHRv
IHRlc3QgY2FzZXMsIHRoZSBwcm90b2NvbCwgc2VydmVycywKPiA+IGV0Yy4gIFRoaXMgYWxzbyBj
aGFuZ2VzIG15IGVtYWlsIGZyb20gbXkgZ21haWwgdG8gbXkga2VybmVsLm9yZwo+ID4gYWRkcmVz
cy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBFcmljIFZhbiBIZW5zYmVyZ2VuIDxlcmljdmhAa2Vy
bmVsLm9yZz4KPgo+IEFja2VkLWJ5OiBEb21pbmlxdWUgTWFydGluZXQgPGFzbWFkZXVzQGNvZGV3
cmVjay5vcmc+Cj4KPiBKdXN0IGEgbml0IGJlbG93Lgo+IChCVFcsIEkgdGhpbmsgd2UgY2FuIGRl
IGZhY3RvIHN0YXJ0IHVzaW5nIG9ubHkgdGhlIG5ldyBsaXN0IHByZXR0eQo+IHF1aWNrbHksIHRo
ZXJlJ3MgbGl0dGxlIHJlYXNvbiB0byBzdGF5IG9uIHRoZSBvbGQgb25lKQo+Cj4gPiAtLS0KPiA+
ICBNQUlOVEFJTkVSUyB8IDYgKysrLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgMyBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMgYi9N
QUlOVEFJTkVSUwo+ID4gaW5kZXggOGQ1YmMyMjNmMzA1Li42NTY3YmFlNzEzN2IgMTAwNjQ0Cj4g
PiAtLS0gYS9NQUlOVEFJTkVSUwo+ID4gKysrIGIvTUFJTlRBSU5FUlMKPiA+IEBAIC0yMjQsMTMg
KzIyNCwxMyBAQCBTOiAgICAgIE9ycGhhbiAvIE9ic29sZXRlCj4gPiAgRjogICBkcml2ZXJzL25l
dC9ldGhlcm5ldC84MzkwLwo+ID4KPiA+ICA5UCBGSUxFIFNZU1RFTQo+ID4gLU06ICAgRXJpYyBW
YW4gSGVuc2JlcmdlbiA8ZXJpY3ZoQGdtYWlsLmNvbT4KPiA+ICtNOiAgIEVyaWMgVmFuIEhlbnNi
ZXJnZW4gPGVyaWN2aEBrZXJuZWwub3JnPgo+ID4gIE06ICAgTGF0Y2hlc2FyIElvbmtvdiA8bHVj
aG9AaW9ua292Lm5ldD4KPiA+ICBNOiAgIERvbWluaXF1ZSBNYXJ0aW5ldCA8YXNtYWRldXNAY29k
ZXdyZWNrLm9yZz4KPiA+ICBSOiAgIENocmlzdGlhbiBTY2hvZW5lYmVjayA8bGludXhfb3NzQGNy
dWRlYnl0ZS5jb20+Cj4gPiAtTDogICB2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKPiA+ICtMOiAgIHY5ZnNAbGlzdHMubGludXguZGV2IDx2OWZzQGxpc3RzLmxpbnV4LmRldj4K
Pgo+IEFzIGZhciBhcyBhcyBJIGNhbiBzZWUgdGhlcmUgYXJlIG5vIG90aGVyIGxpc3QgKG9yIG1h
aWwpIHRoYXQgaGFzIHRoZQo+IHNhbWUgZGVzY3JpcGlvbiBhcyA8bWFpbD4gZmllbGQ7IHlvdSBj
YW4gZWl0aGVyIGRyb3AgdGhlIHJlcGVhdGVkCj4gYDx2OWZzQGxpc3RzLmxpbnV4LmRldj5gIGVu
dGllcmx5IG9yIHdlIGNhbiBnaXZlIHRoZSBsaXN0IGEgbmFtZQo+IGxpa2Ugc29tZSAoZmV3KSBv
dGhlcnMgZG8gZS5nLiAiOXAgZmlsZXN5c3RlbSBkZXZlbG9wZXJzIDx2OWZzQC4uLj4iCj4KPgo+
ID4gIFM6ICAgTWFpbnRhaW5lZAo+ID4gLVc6ICAgaHR0cDovL3N3aWsubmV0L3Y5ZnMKPiA+ICtX
OiAgIGh0dHA6Ly9naXRodWIuY29tL3Y5ZnMKPiA+ICBROiAgIGh0dHA6Ly9wYXRjaHdvcmsua2Vy
bmVsLm9yZy9wcm9qZWN0L3Y5ZnMtZGV2ZWwvbGlzdC8KPiA+ICBUOiAgIGdpdCBnaXQ6Ly9naXQu
a2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvZXJpY3ZoL3Y5ZnMuZ2l0Cj4gPiAg
VDogICBnaXQgZ2l0Oi8vZ2l0aHViLmNvbS9tYXJ0aW5ldGQvbGludXguZ2l0Cj4gPgo+ID4gLS0t
Cj4gPiBiYXNlLWNvbW1pdDogNzA3ODIzZTdmMjJmMzg2NGRkYzdkODVlOGU5YjYxNGFmZTRmMWIx
Ngo+ID4gY2hhbmdlLWlkOiAyMDIzMDQwMS1lcmljdmgtZml4LW1haW50YWluZXJzLTg2NTQ1MmU2
YzQzYQo+Cj4gT2gsIEkgd2FzIHdvbmRlcmluZyB3aGF0IGFkZGVkIHRoYXQsIGl0IGxvb2tzIGxp
a2UgYSBiNCBmZWF0dXJlPwo+IFRoYXQncyBpbnRlcmVzdGluZywgSSBkaWRuJ3Qga25vdyBiNCBh
bHNvIGhhZCB3aGlzdGxlcyBmb3Igc2VuZGluZyBtYWlscwo+IGFzIHdlbGwuIEkgbGlrZSBtb3Jl
IGluZm9zIGluIGhlcmUsIEknbGwgaGF2ZSB0byBnaXZlIGl0IGEgdHJ5Li4uCj4KPiAtLQo+IERv
bWluaXF1ZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlm
cy1kZXZlbG9wZXIK
