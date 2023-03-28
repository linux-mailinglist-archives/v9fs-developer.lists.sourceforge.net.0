Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DD36F6CB4EE
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Mar 2023 05:34:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ph06K-0002sM-6e;
	Tue, 28 Mar 2023 03:34:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <huangjie.albert@bytedance.com>) id 1ph06J-0002sG-2S
 for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 03:34:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+wFMI7wyzON7qQEKzyS0NRyT4cs3j+7YyQRzdMmYse8=; b=OLsiLCC4xMfmbQLhrBUPTlba+C
 fRljarC9TvKtzQzcEcm2lgDvRbiOV2PGyRA+sz8QREWOr6/QBeYU1MG5XNpeZrtR7SVcRYHoZPfds
 5BV31qY9+FauuW11wm0QcFLWyusK8mSiI1DfdWpNoPQ9Ko+9NXqtZt8UFt1d38YHLH30=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+wFMI7wyzON7qQEKzyS0NRyT4cs3j+7YyQRzdMmYse8=; b=jSsZNcK8mKQ1lG3PtiezXIg9q4
 gfpA6Xj01PfD63hwfivZkfbg/qSatGSgKYzZtbFfdmYy2U1i9+y3FhGMkrlb/v8etEyPSueR0Cw1u
 C75g31SIc3JDBO8jLqm30OTX2td5YeVI1BRrNb5qXvHFwYACEHTAI/QImLllqDrIv/LY=;
Received: from mail-ed1-f54.google.com ([209.85.208.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ph06E-006Som-Cg for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 03:34:23 +0000
Received: by mail-ed1-f54.google.com with SMTP id eg48so44063847edb.13
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 27 Mar 2023 20:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance.com; s=google; t=1679974448;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+wFMI7wyzON7qQEKzyS0NRyT4cs3j+7YyQRzdMmYse8=;
 b=a3tY1LmObhC0z0hZg8zawznTQHJb8299vq9HHxV+WEZpssvjwDFes4lRz1QAnvO1ZK
 gLhti1Z73ZLZAjcxKfrpw8KYOFYo4UUmXEZTZ0JaZuv0fylz4J+sBm2hY3fO/2G+DQ21
 4OhZObKDelZVbwGm5irqNjF+I56ix+2f1y6/lk5a3GytKO7V7HtQ/O23BPgIf5V0lOIE
 pCUTswzXgEiN+zW6Sxw9tPNbu1des0BmPf9qVuFRIq7kYdhB96IqUwqaGEuJNyTNEhq1
 dXjDZdE7XI+JMlYiGGohO1HrhbjpnXKnH15pRf8FQbHTjpRc5apN6Fz5Mobl5xReQKIp
 pLmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679974448;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=+wFMI7wyzON7qQEKzyS0NRyT4cs3j+7YyQRzdMmYse8=;
 b=bkbVUkrM0jH5bFYCa/dFh1Je7u3aQqhIvMWN8Me0vfxqhoACU4YWeFpumxFlSc/eVP
 Spy3ONtgIWdhu1iz0j65tOARhU5DezTIa7HYuXjWeNrx6lFlH3ocSHpM+BGU3eMS46Mx
 0CXAd/AKqrTl/JaqqrOLi4nD7gmShDvu6fq983u087XwRIRFGPOrhB4GhXFE9xJHAHp3
 ShgtdHsPn+LFAL3R1aolfwe3A+tJCwUXrzfwbcwepS8iyfhPXkQGIndIvG3y0FhSRKrB
 mhZdRl0IZaRYEbsMaXiWrahP3U8MWIeFyLbPGmqEP4LTwFmQCry9/gacypJbfJbMSFDn
 RoQg==
X-Gm-Message-State: AAQBX9f5Otmx862auAQnXGIyc0wfy8BEMiJsapPlu4XSGRiR2N//lK76
 +XPg2IHVVgeyuRgTKxNWHTEQIbKGZEtOGaznW5LYBsdJKLsU1ft8fw8=
X-Google-Smtp-Source: AK7set+nSXDFj/ni8SPspFk0PDp6/pK7vWqo6D8JhfKupKqCJgdk0C/cT34nyndDPBnKZqpg9eqMz/66FwOPzo1feJ0=
X-Received: by 2002:a05:6512:b8a:b0:4e8:4409:bb76 with SMTP id
 b10-20020a0565120b8a00b004e84409bb76mr11090446lfv.2.1679972955902; Mon, 27
 Mar 2023 20:09:15 -0700 (PDT)
MIME-Version: 1.0
References: <20230325105633.58592-1-huangjie.albert@bytedance.com>
 <ZCJNTBQLZeyLBKKB@codewreck.org>
 <CACGkMEt29t9CK2Muiuyb1s6p2AzgcMiD_z0NVFn1d+KEqBydug@mail.gmail.com>
In-Reply-To: <CACGkMEt29t9CK2Muiuyb1s6p2AzgcMiD_z0NVFn1d+KEqBydug@mail.gmail.com>
Date: Tue, 28 Mar 2023 11:09:04 +0800
Message-ID: <CABKxMyPwuRb6p-oHxcQDhRtJv04=NDWvosNAp=epgvdrfCeveg@mail.gmail.com>
To: Jason Wang <jasowang@redhat.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Jason Wang <jasowang@redhat.com> 于2023年3月28日周二
    10:59写道： > > On Tue, Mar 28, 2023 at 10:13 AM Dominique Martinet
   > <asmadeus@codewreck.org> wrote: > > > > Hi Michael, Albert, > > > [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.208.54 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.208.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-Headers-End: 1ph06E-006Som-Cg
Subject: Re: [V9fs-developer] [External] Re: 9p regression (Was: [PATCH v2]
 virtio_ring: don't update event idx on get_buf)
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
From: =?UTF-8?B?6buE5p2w?= via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: =?UTF-8?B?6buE5p2w?= <huangjie.albert@bytedance.com>
Cc: "Michael S. Tsirkin" <mst@redhat.com>,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 Luis Chamberlain <mcgrof@kernel.org>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SmFzb24gV2FuZyA8amFzb3dhbmdAcmVkaGF0LmNvbT4g5LqOMjAyM+W5tDPmnIgyOOaXpeWRqOS6
jCAxMDo1OeWGmemBk++8mgo+Cj4gT24gVHVlLCBNYXIgMjgsIDIwMjMgYXQgMTA6MTPigK9BTSBE
b21pbmlxdWUgTWFydGluZXQKPiA8YXNtYWRldXNAY29kZXdyZWNrLm9yZz4gd3JvdGU6Cj4gPgo+
ID4gSGkgTWljaGFlbCwgQWxiZXJ0LAo+ID4KPiA+IEFsYmVydCBIdWFuZyB3cm90ZSBvbiBTYXQs
IE1hciAyNSwgMjAyMyBhdCAwNjo1NjozM1BNICswODAwOgo+ID4gPiBpbiB2aXJ0aW9fbmV0LCBp
ZiB3ZSBkaXNhYmxlIHRoZSBuYXBpX3R4LCB3aGVuIHdlIHRyaWdlciBhIHR4IGludGVycnVwdCwK
PiA+ID4gdGhlIHZxLT5ldmVudF90cmlnZ2VyZWQgd2lsbCBiZSBzZXQgdG8gdHJ1ZS4gSXQgd2ls
bCBubyBsb25nZXIgYmUgc2V0IHRvCj4gPiA+IGZhbHNlLiBVbmxlc3Mgd2UgZXhwbGljaXRseSBj
YWxsIHZpcnRxdWV1ZV9lbmFibGVfY2JfZGVsYXllZCBvcgo+ID4gPiB2aXJ0cXVldWVfZW5hYmxl
X2NiX3ByZXBhcmUuCj4gPgo+ID4gVGhpcyBwYXRjaCAoY29tbWl0ZWQgYXMgMzUzOTU3NzBmODAz
ICgidmlydGlvX3Jpbmc6IGRvbid0IHVwZGF0ZSBldmVudAo+ID4gaWR4IG9uIGdldF9idWYiKSBp
biBuZXh0LTIwMjMwMzI3IGFwcGFyZW50bHkgYnJlYWtzIDlwLCBhcyByZXBvcnRlZCBieQo+ID4g
THVpcyBpbiBodHRwczovL2xrbWwua2VybmVsLm9yZy9yL1pDSSs3V2c1T2NsU2xFOGNAYm9tYmFk
aWwuaW5mcmFkZWFkLm9yZwo+ID4KPiA+IEkndmUganVzdCBoaXQgaGFkIGEgbG9vayBhdCByZWNl
bnQgcGF0Y2hlc1sxXSBhbmQgcmV2ZXJ0ZWQgdGhpcyB0byB0ZXN0Cj4gPiBhbmQgSSBjYW4gbW91
bnQgYWdhaW4sIHNvIEknbSBwcmV0dHkgc3VyZSB0aGlzIGlzIHRoZSBjdWxwcml0LCBidXQgSQo+
ID4gZGlkbid0IGxvb2sgYXQgdGhlIGNvbnRlbnQgYXQgYWxsIHlldCBzbyBjYW5ub3QgYWR2aXNl
IGZ1cnRoZXIuCj4gPiBJdCBtaWdodCB2ZXJ5IHdlbGwgYmUgdGhhdCB3ZSBuZWVkIHNvbWUgZXh0
cmEgaGFuZGxpbmcgZm9yIDlwCj4gPiBzcGVjaWZpY2FsbHkgdGhhdCBjYW4gYmUgYWRkZWQgc2Vw
YXJhdGVseSBpZiByZXF1aXJlZC4KPiA+Cj4gPiBbMV0gZ2l0IGxvZyAwZWM1N2NmYTcyMWZiZDM2
YjRjNGMwZDljY2M1ZDc4YTc4ZjdmYTM1Li5IRUFEIGRyaXZlcnMvdmlydGlvLwo+ID4KPiA+Cj4g
PiBUaGlzIGNhbiBiZSByZXByb2R1Y2VkIHdpdGggYSBzaW1wbGUgbW91bnQsIHJ1biBxZW11IHdp
dGggc29tZSAtdmlydGZzCj4gPiBhcmd1bWVudCBhbmQgYG1vdW50IC10IDlwIC1vIGRlYnVnPTY1
NTM1IHRhZyBtb3VudHBvaW50YCB3aWxsIGhhbmcgYWZ0ZXIKPiA+IHRoZXNlIG1lc3NhZ2VzOgo+
ID4gOXBuZXQ6IC0tIHA5X3ZpcnRpb19yZXF1ZXN0ICg4Myk6IDlwIGRlYnVnOiB2aXJ0aW8gcmVx
dWVzdAo+ID4gOXBuZXQ6IC0tIHA5X3ZpcnRpb19yZXF1ZXN0ICg4Myk6IHZpcnRpbyByZXF1ZXN0
IGtpY2tlZAo+ID4KPiA+IFNvIEkgc3VzcGVjdCB3ZSdyZSBqdXN0IG5vdCBnZXR0aW5nIGEgY2Fs
bGJhY2suCj4KPiBJIHRoaW5rIHNvLiBUaGUgcGF0Y2ggYXNzdW1lcyB0aGUgZHJpdmVyIHdpbGwg
Y2FsbAo+IHZpcnRxdWV1ZV9kaXNhYmxlL2VuYWJsZV9jYigpIHdoaWNoIGlzIG5vdCB0aGUgY2Fz
ZSBvZiB0aGUgOXAgZHJpdmVyLgo+Cj4gU28gYWZ0ZXIgdGhlIGZpcnN0IGludGVycnVwdCwgZXZl
bnRfdHJpZ2dlcmVkIHdpbGwgYmUgc2V0IHRvIHRydWUgZm9yZXZlci4KPgo+IFRoYW5rcwo+CgpI
aTogV2FuZwoKWWVzLCAgVGhpcyBwYXRjaCBhc3N1bWVzIHRoYXQgYWxsIHZpcnRpby1yZWxhdGVk
IGRyaXZlcnMgd2lsbCBjYWxsCnZpcnRxdWV1ZV9kaXNhYmxlL2VuYWJsZV9jYigpLgpUaGFuayB5
b3UgZm9yIHJhaXNpbmcgdGhpcyBpc3N1ZS4KCkl0IHNlZW1zIHRoYXQgbmFwaV90eCBpcyBvbmx5
IHJlbGF0ZWQgdG8gdmlydHVlX25ldC4gSSdtIHRoaW5raW5nIGlmCndlIG5lZWQgdG8gcmVmYWN0
b3IKbmFwaV90eCBpbnN0ZWFkIG9mIGltcGxlbWVudGluZyBpdCBpbnNpZGUgdmlydGlvX3Jpbmcu
CgpUaGFua3MKCj4gPgo+ID4KPiA+IEknbGwgaGF2ZSBhIGNsb3NlciBsb29rIGFmdGVyIHdvcmss
IGJ1dCBhbnkgYWR2aWNlIG1lYW53aGlsZSB3aWxsIGJlCj4gPiBhcHByZWNpYXRlZCEKPiA+IChJ
J20gc3VyZSBMdWlzIHdvdWxkIGFsc28gbGlrZSBhIHRlbXBvcmFyeSBkcm9wIGZyb20gLW5leHQg
dW50aWwKPiA+IHRoaXMgaXMgZmlndXJlZCBvdXQsIGJ1dCBJJ2xsIGxlYXZlIHRoaXMgdXAgdG8g
eW91KQo+ID4KPiA+Cj4gPiA+Cj4gPiA+IElmIHdlIGRpc2FibGUgdGhlIG5hcGlfdHgsIGl0IHdp
bGwgb25seSBiZSBjYWxsZWQgd2hlbiB0aGUgdHggcmluZwo+ID4gPiBidWZmZXIgaXMgcmVsYXRp
dmVseSBzbWFsbC4KPiA+ID4KPiA+ID4gQmVjYXVzZSBldmVudF90cmlnZ2VyZWQgaXMgdHJ1ZS4g
VGhlcmVmb3JlLCBWUklOR19BVkFJTF9GX05PX0lOVEVSUlVQVCBvcgo+ID4gPiBWUklOR19QQUNL
RURfRVZFTlRfRkxBR19ESVNBQkxFIHdpbGwgbm90IGJlIHNldC4gU28gd2UgdXBkYXRlCj4gPiA+
IHZyaW5nX3VzZWRfZXZlbnQoJnZxLT5zcGxpdC52cmluZykgb3IgdnEtPnBhY2tlZC52cmluZy5k
cml2ZXItPm9mZl93cmFwCj4gPiA+IGV2ZXJ5IHRpbWUgd2UgY2FsbCB2aXJ0cXVldWVfZ2V0X2J1
Zl9jdHguIFRoaXMgd2lsbCBicmluZyBtb3JlIGludGVycnVwdGlvbnMuCj4gPiA+Cj4gPiA+IFRv
IHN1bW1hcml6ZToKPiA+ID4gMSkgZXZlbnRfdHJpZ2dlcmVkIHdhcyBzZXQgdG8gdHJ1ZSBpbiB2
cmluZ19pbnRlcnJ1cHQoKQo+ID4gPiAyKSBhZnRlciB0aGlzIG5vdGhpbmcgd2lsbCBoYXBwZW4g
Zm9yIHZpcnRxdWV1ZV9kaXNhYmxlX2NiKCkgc28KPiA+ID4gICAgVlJJTkdfQVZBSUxfRl9OT19J
TlRFUlJVUFQgaXMgbm90IHNldCBpbiBhdmFpbF9mbGFnc19zaGFkb3cKPiA+ID4gMykgdmlydHF1
ZXVlX2dldF9idWZfY3R4X3NwbGl0KCkgd2lsbCBzdGlsbCB0aGluayB0aGUgY2IgaXMgZW5hYmxl
ZAo+ID4gPiAgICB0aGVuIGl0IHRyaWVzIHRvIHB1Ymxpc2ggbmV3IGV2ZW50Cj4gPiA+Cj4gPiA+
IFRvIGZpeCwgaWYgZXZlbnRfdHJpZ2dlcmVkIGlzIHNldCB0byB0cnVlLCBkbyBub3QgdXBkYXRl
Cj4gPiA+IHZyaW5nX3VzZWRfZXZlbnQoJnZxLT5zcGxpdC52cmluZykgb3IgdnEtPnBhY2tlZC52
cmluZy5kcml2ZXItPm9mZl93cmFwCj4gPiA+Cj4gPiA+IFRlc3RlZCB3aXRoIGlwZXJmOgo+ID4g
PiBpcGVyZjMgdGNwIHN0cmVhbToKPiA+ID4gdm0xIC0tLS0tLS0tLS0tLS0tLS0tPiB2bTIKPiA+
ID4gdm0yIGp1c3QgcmVjZWl2ZXMgdGNwIGRhdGEgc3RyZWFtIGZyb20gdm0xLCBhbmQgc2VuZHMg
dGhlIGFjayB0byB2bTEsCj4gPiA+IHRoZXJlIGFyZSBtYW55IHR4IGludGVycnVwdHMgaW4gdm0y
Lgo+ID4gPiBidXQgd2l0aG91dCBldmVudF90cmlnZ2VyZWQgdGhlcmUgYXJlIGp1c3QgYSBmZXcg
dHggaW50ZXJydXB0cy4KPiA+ID4KPiA+ID4gRml4ZXM6IDhkNjIyZDIxZDI0OCAoInZpcnRpbzog
Zml4IHVwIHZpcnRpb19kaXNhYmxlX2NiIikKPiA+ID4gU2lnbmVkLW9mZi1ieTogQWxiZXJ0IEh1
YW5nIDxodWFuZ2ppZS5hbGJlcnRAYnl0ZWRhbmNlLmNvbT4KPiA+ID4gTWVzc2FnZS1JZDogPDIw
MjMwMzIxMDg1OTUzLjI0OTQ5LTEtaHVhbmdqaWUuYWxiZXJ0QGJ5dGVkYW5jZS5jb20+Cj4gPiA+
IFNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgUy4gVHNpcmtpbiA8bXN0QHJlZGhhdC5jb20+Cj4gPiA+
IC0tLQo+ID4gPiAgZHJpdmVycy92aXJ0aW8vdmlydGlvX3JpbmcuYyB8IDYgKysrKy0tCj4gPiA+
ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gPgo+
ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy92aXJ0aW8vdmlydGlvX3JpbmcuYyBiL2RyaXZlcnMv
dmlydGlvL3ZpcnRpb19yaW5nLmMKPiA+ID4gaW5kZXggY2JlZWVhMWIwNDM5Li4xYzM2ZmE0Nzc5
NjYgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvdmlydGlvL3ZpcnRpb19yaW5nLmMKPiA+ID4g
KysrIGIvZHJpdmVycy92aXJ0aW8vdmlydGlvX3JpbmcuYwo+ID4gPiBAQCAtOTE0LDcgKzkxNCw4
IEBAIHN0YXRpYyB2b2lkICp2aXJ0cXVldWVfZ2V0X2J1Zl9jdHhfc3BsaXQoc3RydWN0IHZpcnRx
dWV1ZSAqX3ZxLAo+ID4gPiAgICAgICAvKiBJZiB3ZSBleHBlY3QgYW4gaW50ZXJydXB0IGZvciB0
aGUgbmV4dCBlbnRyeSwgdGVsbCBob3N0Cj4gPiA+ICAgICAgICAqIGJ5IHdyaXRpbmcgZXZlbnQg
aW5kZXggYW5kIGZsdXNoIG91dCB0aGUgd3JpdGUgYmVmb3JlCj4gPiA+ICAgICAgICAqIHRoZSBy
ZWFkIGluIHRoZSBuZXh0IGdldF9idWYgY2FsbC4gKi8KPiA+ID4gLSAgICAgaWYgKCEodnEtPnNw
bGl0LmF2YWlsX2ZsYWdzX3NoYWRvdyAmIFZSSU5HX0FWQUlMX0ZfTk9fSU5URVJSVVBUKSkKPiA+
ID4gKyAgICAgaWYgKHVubGlrZWx5KCEodnEtPnNwbGl0LmF2YWlsX2ZsYWdzX3NoYWRvdyAmIFZS
SU5HX0FWQUlMX0ZfTk9fSU5URVJSVVBUKSAmJgo+ID4gPiArICAgICAgICAgICAgICAgICAgIXZx
LT5ldmVudF90cmlnZ2VyZWQpKQo+ID4gPiAgICAgICAgICAgICAgIHZpcnRpb19zdG9yZV9tYih2
cS0+d2Vha19iYXJyaWVycywKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJnZy
aW5nX3VzZWRfZXZlbnQoJnZxLT5zcGxpdC52cmluZyksCj4gPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGNwdV90b192aXJ0aW8xNihfdnEtPnZkZXYsIHZxLT5sYXN0X3VzZWRfaWR4
KSk7Cj4gPiA+IEBAIC0xNzQ0LDcgKzE3NDUsOCBAQCBzdGF0aWMgdm9pZCAqdmlydHF1ZXVlX2dl
dF9idWZfY3R4X3BhY2tlZChzdHJ1Y3QgdmlydHF1ZXVlICpfdnEsCj4gPiA+ICAgICAgICAqIGJ5
IHdyaXRpbmcgZXZlbnQgaW5kZXggYW5kIGZsdXNoIG91dCB0aGUgd3JpdGUgYmVmb3JlCj4gPiA+
ICAgICAgICAqIHRoZSByZWFkIGluIHRoZSBuZXh0IGdldF9idWYgY2FsbC4KPiA+ID4gICAgICAg
ICovCj4gPiA+IC0gICAgIGlmICh2cS0+cGFja2VkLmV2ZW50X2ZsYWdzX3NoYWRvdyA9PSBWUklO
R19QQUNLRURfRVZFTlRfRkxBR19ERVNDKQo+ID4gPiArICAgICBpZiAodW5saWtlbHkodnEtPnBh
Y2tlZC5ldmVudF9mbGFnc19zaGFkb3cgPT0gVlJJTkdfUEFDS0VEX0VWRU5UX0ZMQUdfREVTQyAm
Jgo+ID4gPiArICAgICAgICAgICAgICAgICAgIXZxLT5ldmVudF90cmlnZ2VyZWQpKQo+ID4gPiAg
ICAgICAgICAgICAgIHZpcnRpb19zdG9yZV9tYih2cS0+d2Vha19iYXJyaWVycywKPiA+ID4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgJnZxLT5wYWNrZWQudnJpbmcuZHJpdmVyLT5vZmZf
d3JhcCwKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY3B1X3RvX2xlMTYodnEt
Pmxhc3RfdXNlZF9pZHgpKTsKPiA+Cj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9w
ZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
