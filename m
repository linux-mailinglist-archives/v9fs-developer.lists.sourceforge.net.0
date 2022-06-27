Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E51555BBFB
	for <lists+v9fs-developer@lfdr.de>; Mon, 27 Jun 2022 22:23:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o5vGT-0004Kf-TC; Mon, 27 Jun 2022 20:23:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <stephen@networkplumber.org>) id 1o5vGS-0004KZ-Fp
 for v9fs-developer@lists.sourceforge.net; Mon, 27 Jun 2022 20:23:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=k/l4LcE4w+6LYrCo6/Ek+44r04gbnpHm9yyPA0qKR6A=; b=FF5ykgrQ6Blx232WfWh96WOkzw
 VhWTEVboF3L4EPD9vlxxVRA1ZvPvXgTLlYnqU4no39QbfasdwNtTYW3ImvyiRZxoYselFDuOoIaQn
 KwcQzMRp0tAHKQpKT4uvBHsTTVAV1BLDtW1iaCDdam8AGzwb4yjUxlHxXO+Cv9g+4Vho=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=k/l4LcE4w+6LYrCo6/Ek+44r04gbnpHm9yyPA0qKR6A=; b=OEmyW/LmyQC7hO6lOQ82NMtyK6
 Xu8gvKlkjnEajbqxkdKtz4hXwThApnuoR+yc8/U/vYS2ASLYrjr7GytYu4AyZOzGEst19NC0hU5Ae
 Jij2JqvqZLMrM1u7W3rYv1Kpxjoqi6NTKXHim395uZIcp1NlGIgwCa8ENeeSCsJfeNMo=;
Received: from mail-il1-f181.google.com ([209.85.166.181])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o5vGP-00G22h-SM
 for v9fs-developer@lists.sourceforge.net; Mon, 27 Jun 2022 20:23:20 +0000
Received: by mail-il1-f181.google.com with SMTP id h5so6801709ili.3
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 27 Jun 2022 13:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=k/l4LcE4w+6LYrCo6/Ek+44r04gbnpHm9yyPA0qKR6A=;
 b=ryYp2naL1201DMNfPmSbpexCs+zqiLsBQDBXHc9esFHxBJ8Ep2LLrsgHtxJtosu2+J
 1iBYfvQQXv6NYwKQ2qXQCc4mHXYQGPYeeUC3hu2OgPUPjZXH+3Hi6Zqo5SyTeGerBVQA
 p1Bh5daOuP6Q9UMRPxlj6vxZpUjBpxOPEYhjttl3pP6gtksJnO1wA5G3ERXmm3iOhFrs
 MlyYmEaZt8I/cdZ0xlE1RQA9V/oE3k4e+iV7r8nrUlXmSvlRImOQktUmXD254MFh7ceV
 2zbWTxt+/QD0MTYLBrv8xqePAliI2A59OkEqXOPrksIatTeOcW53aiRz+65e7KopsoX+
 3osw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=k/l4LcE4w+6LYrCo6/Ek+44r04gbnpHm9yyPA0qKR6A=;
 b=GJXYFEQcQI46oUuTq8x4uoz7pZ0xHLjDQFgrsVfkp8eLFWy3ZiHqC7QIjEBRQxOUvJ
 Z8Mi8RY8yvGTtkeIq7jGMn8C/kmUbA12AVd+EwUoY2rh5c7khkv0nInk1934pqetAL6m
 VYulLTn0fO8RKB0AoIs5ANdDAnIbg+7Coe5pSWE3ta1s4V1RIGqBdU/2xN9qlnnF1zLi
 WPHNXqIlqTWuyhLTVs7JoDmzHttjPkABh0RSfRhnQOR5LgfxNkVdI9SXn8+FFOWZH741
 k40tFf+TORQEIPCCXR0Bf0J8El7V1mo88FAkEb7ks/eOI14ytNr/R6DSBTHYxKGe+HVj
 oMgA==
X-Gm-Message-State: AJIora9Cj7/irck+O7BciOj3ztjUFCrcz1KnaZ3KBHfeiGREoCSKDuVr
 Za0BaR7N9okSLKOYajdbFY248EwNdn0CCaGA
X-Google-Smtp-Source: AGRyM1ssDeW6Ux1oaY9ixgaaapzXMFszbxcRVeOWaHAYiiaVMZ4HUYtPzqxXzR6I8+fqeJNf8u9hpg==
X-Received: by 2002:a63:7a5d:0:b0:40c:fcbe:4799 with SMTP id
 j29-20020a637a5d000000b0040cfcbe4799mr14428539pgn.297.1656359626928; 
 Mon, 27 Jun 2022 12:53:46 -0700 (PDT)
Received: from hermes.local (204-195-112-199.wavecable.com. [204.195.112.199])
 by smtp.gmail.com with ESMTPSA id
 c16-20020a056a00009000b0051c1b445094sm7821510pfj.7.2022.06.27.12.53.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jun 2022 12:53:46 -0700 (PDT)
Date: Mon, 27 Jun 2022 12:53:43 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Message-ID: <20220627125343.44e24c41@hermes.local>
In-Reply-To: <20220627180432.GA136081@embeddedor>
References: <20220627180432.GA136081@embeddedor>
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 27 Jun 2022 20:04:32 +0200 "Gustavo A. R. Silva" <gustavoars@kernel.org>
    wrote: > There is a regular need in the kernel to provide a way to declare
    > having a dynamically sized set of trailing elements in a structure. > Kernel
    code should always use “flexible array members”[1 [...] 
 
 Content analysis details:   (-0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.166.181 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.166.181 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o5vGP-00G22h-SM
Subject: Re: [V9fs-developer] [PATCH][next] treewide: uapi: Replace
 zero-length arrays with flexible-array members
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
Cc: nvdimm@lists.linux.dev, alsa-devel@alsa-project.org, kvm@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dm-devel@redhat.com, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-hardening@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net,
 linux-stm32@st-md-mailman.stormreply.com, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org, x86@kernel.org,
 kasan-dev@googlegroups.com, lvs-devel@vger.kernel.org, coreteam@netfilter.org,
 v9fs-developer@lists.sourceforge.net, Kees Cook <keescook@chromium.org>,
 intel-gfx@lists.freedesktop.org, linux-can@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 virtualization@lists.linux-foundation.org, io-uring@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-perf-users@vger.kernel.org,
 linux-sctp@vger.kernel.org, netfilter-devel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, bpf@vger.kernel.org,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gTW9uLCAyNyBKdW4gMjAyMiAyMDowNDozMiArMDIwMAoiR3VzdGF2byBBLiBSLiBTaWx2YSIg
PGd1c3Rhdm9hcnNAa2VybmVsLm9yZz4gd3JvdGU6Cgo+IFRoZXJlIGlzIGEgcmVndWxhciBuZWVk
IGluIHRoZSBrZXJuZWwgdG8gcHJvdmlkZSBhIHdheSB0byBkZWNsYXJlCj4gaGF2aW5nIGEgZHlu
YW1pY2FsbHkgc2l6ZWQgc2V0IG9mIHRyYWlsaW5nIGVsZW1lbnRzIGluIGEgc3RydWN0dXJlLgo+
IEtlcm5lbCBjb2RlIHNob3VsZCBhbHdheXMgdXNlIOKAnGZsZXhpYmxlIGFycmF5IG1lbWJlcnPi
gJ1bMV0gZm9yIHRoZXNlCj4gY2FzZXMuIFRoZSBvbGRlciBzdHlsZSBvZiBvbmUtZWxlbWVudCBv
ciB6ZXJvLWxlbmd0aCBhcnJheXMgc2hvdWxkCj4gbm8gbG9uZ2VyIGJlIHVzZWRbMl0uCj4gCj4g
VGhpcyBjb2RlIHdhcyB0cmFuc2Zvcm1lZCB3aXRoIHRoZSBoZWxwIG9mIENvY2NpbmVsbGU6Cj4g
KGxpbnV4LTUuMTktcmMyJCBzcGF0Y2ggLS1qb2JzICQoZ2V0Y29uZiBfTlBST0NFU1NPUlNfT05M
TikgLS1zcC1maWxlIHNjcmlwdC5jb2NjaSAtLWluY2x1ZGUtaGVhZGVycyAtLWRpciAuID4gb3V0
cHV0LnBhdGNoKQo+IAo+IEBACj4gaWRlbnRpZmllciBTLCBtZW1iZXIsIGFycmF5Owo+IHR5cGUg
VDEsIFQyOwo+IEBACj4gCj4gc3RydWN0IFMgewo+ICAgLi4uCj4gICBUMSBtZW1iZXI7Cj4gICBU
MiBhcnJheVsKPiAtIDAKPiAgIF07Cj4gfTsKPiAKPiAtZnN0cmljdC1mbGV4LWFycmF5cz0zIGlz
IGNvbWluZyBhbmQgd2UgbmVlZCB0byBsYW5kIHRoZXNlIGNoYW5nZXMKPiB0byBwcmV2ZW50IGlz
c3VlcyBsaWtlIHRoZXNlIGluIHRoZSBzaG9ydCBmdXR1cmU6Cj4gCj4gLi4vZnMvbWluaXgvZGly
LmM6MzM3OjM6IHdhcm5pbmc6ICdzdHJjcHknIHdpbGwgYWx3YXlzIG92ZXJmbG93OyBkZXN0aW5h
dGlvbiBidWZmZXIgaGFzIHNpemUgMCwKPiBidXQgdGhlIHNvdXJjZSBzdHJpbmcgaGFzIGxlbmd0
aCAyIChpbmNsdWRpbmcgTlVMIGJ5dGUpIFstV2ZvcnRpZnktc291cmNlXQo+IAkJc3RyY3B5KGRl
My0+bmFtZSwgIi4iKTsKPiAJCV4KPiAKPiBTaW5jZSB0aGVzZSBhcmUgYWxsIFswXSB0byBbXSBj
aGFuZ2VzLCB0aGUgcmlzayB0byBVQVBJIGlzIG5lYXJseSB6ZXJvLiBJZgo+IHRoaXMgYnJlYWtz
IGFueXRoaW5nLCB3ZSBjYW4gdXNlIGEgdW5pb24gd2l0aCBhIG5ldyBtZW1iZXIgbmFtZS4KPiAK
PiBbMV0gaHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvRmxleGlibGVfYXJyYXlfbWVtYmVy
Cj4gWzJdIGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvdjUuMTYvcHJvY2Vzcy9kZXBy
ZWNhdGVkLmh0bWwjemVyby1sZW5ndGgtYW5kLW9uZS1lbGVtZW50LWFycmF5cwo+IAo+IExpbms6
IGh0dHBzOi8vZ2l0aHViLmNvbS9LU1BQL2xpbnV4L2lzc3Vlcy83OAo+IEJ1aWxkLXRlc3RlZC1i
eTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC82MmI2NzVlYy53S1g2QU9aNmNiRTcxdnRG
JTI1bGtwQGludGVsLmNvbS8KPiBTaWduZWQtb2ZmLWJ5OiBHdXN0YXZvIEEuIFIuIFNpbHZhIDxn
dXN0YXZvYXJzQGtlcm5lbC5vcmc+CgpUaGFua3MgdGhpcyBmaXhlcyB3YXJuaW5nIHdpdGggZ2Nj
LTEyIGluIGlwcm91dGUyLgpJbiBmdW5jdGlvbiDigJh4ZnJtX2FsZ29fcGFyc2XigJksCiAgICBp
bmxpbmVkIGZyb20g4oCYeGZybV9zdGF0ZV9tb2RpZnkuY29uc3Rwcm9w4oCZIGF0IHhmcm1fc3Rh
dGUuYzo1NzM6NToKeGZybV9zdGF0ZS5jOjE2MjozMjogd2FybmluZzogd3JpdGluZyAxIGJ5dGUg
aW50byBhIHJlZ2lvbiBvZiBzaXplIDAgWy1Xc3RyaW5nb3Atb3ZlcmZsb3c9XQogIDE2MiB8ICAg
ICAgICAgICAgICAgICAgICAgICAgIGJ1ZltqXSA9IHZhbDsKICAgICAgfCAgICAgICAgICAgICAg
ICAgICAgICAgICB+fn5+fn5+Xn5+fn4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9w
ZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
