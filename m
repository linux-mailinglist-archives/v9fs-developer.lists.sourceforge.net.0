Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D95F46B5F12
	for <lists+v9fs-developer@lfdr.de>; Sat, 11 Mar 2023 18:36:27 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pb38V-0004yT-Dy;
	Sat, 11 Mar 2023 17:36:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ivan.orlov0322@gmail.com>) id 1pb38K-0004yC-SL
 for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Mar 2023 17:35:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=inkmI/Yc55oH+OAgW/G1RQMkGyBxBvxe3t8F6Rn9vUA=; b=S2iv+XiZ2L62Dgpp9IKrz3HBjt
 uWIPVz0MizjWGrJ3J/uO+CCDxTlznR4rMBuZyKKcPrCnoiJcGEhtFQPg8Z6bLiq1cU8MBTFnVWupi
 qJc+k8Vhwu4CHtaIFloPQGasMtAYEQyKtLlfcGeCNmnuZTinrl/4HiioeZTVKGJS6jrA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=inkmI/Yc55oH+OAgW/G1RQMkGyBxBvxe3t8F6Rn9vUA=; b=c7tqmP/Tj3mPA8Xpw2wyzpgUiX
 WQ+OIeyY6cX6H3pK5V3e8W7ny+j8WSxPVwv2UujRY5rFWBLM9NiM5CPGe13Um80G99tf3WBngQhrP
 htYn3AhVyDzuN582lFxQlZny2OZ1gQW3qnf06j7rx6+VsFRPW1FiotF46FU+XX83C3ek=;
Received: from mail-ed1-f47.google.com ([209.85.208.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pb38J-0003a2-Bp for v9fs-developer@lists.sourceforge.net;
 Sat, 11 Mar 2023 17:35:53 +0000
Received: by mail-ed1-f47.google.com with SMTP id er25so4908164edb.5
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 11 Mar 2023 09:35:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678556144;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=inkmI/Yc55oH+OAgW/G1RQMkGyBxBvxe3t8F6Rn9vUA=;
 b=pHGpBQ073xM2B56EvVGdkyPDPc2e2lY3LZlq3DkqgmHpKoMzrOTG37LsE8XI4w/sQw
 mdWuBiAqqwl/ni9QcB2IYANfjhTKVScmyjinmHlpDPAMczMY4MFlRQKCiu2Qz3IE7pHZ
 O4vYJq0slSj+TYuraVo2VYJALXgswIP4fvY0YwFe1E6whfGGQWjw6GamzeVL0F0BeFTm
 CXuPvhSbluqR2MJ27JNghrZSz4lheJBkldd+U+6nYeQkpW1GlSgQsT77KvAgRzZecQhM
 Fqwmp8DK4Fo0JV/07N2SffV4diUn9KdGD+vmWG6lsWp3hmpcCHm7UH1ulgxRirRJeNtb
 th6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678556144;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=inkmI/Yc55oH+OAgW/G1RQMkGyBxBvxe3t8F6Rn9vUA=;
 b=swE8uFNRIx9Du9xIaxPNzAkgNPco8HjL52OMwVgvtgo/FSdPSLTcetdZ7Wd1mVSMrv
 Bpuq1uYVsqy7eVwq5IpTUGJ8R1qZjIejOWVN+pAbm3X2ROn2PUTQBH4oIPfgABolEKEL
 bSVcMEcXPG+aW4hqCPrb46re2KGs2xXKrnVffrSF5wgytVQVIZdIbD8ihWg2HOrH9/D+
 woJfcmjZgRsdMTLpBvW5lTT7kZDr+k7uQuf9GZOYKW+8BzcyivUMC0MNLtXL/9JSGDts
 gW6dGLJDt6EZPGla6EEM7HMhI1LdVl90dnkl1pQwxVorFuYB+w5cxvSiGhIH8Xgk3AEp
 ytrg==
X-Gm-Message-State: AO0yUKXZ3yigk1WQkb936G/Jv2qqcG22E2oXjJS6Dxd/xs9rDIHgMXob
 QP7EWL/0CeBWpYSeXtRISBw=
X-Google-Smtp-Source: AK7set+wjuNcDAjxAcSlBFN1Kql0mhZJD7n898URWMUbIbQwCZ7D6krXKc5StYEaRyb8plJ2mAqAaQ==
X-Received: by 2002:a17:906:10c8:b0:8b1:94cc:10b1 with SMTP id
 v8-20020a17090610c800b008b194cc10b1mr6628865ejv.7.1678556143979; 
 Sat, 11 Mar 2023 09:35:43 -0800 (PST)
Received: from [192.168.10.15] ([37.252.81.68])
 by smtp.gmail.com with ESMTPSA id
 h14-20020a50c38e000000b004fa610895b5sm962679edf.7.2023.03.11.09.35.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 11 Mar 2023 09:35:43 -0800 (PST)
Message-ID: <d5bb5ff0-1102-c7cd-c21b-c3a7f4f31717@gmail.com>
Date: Sat, 11 Mar 2023 21:35:41 +0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: David Kahurani <k.kahurani@gmail.com>
References: <20230310202619.433269-1-ivan.orlov0322@gmail.com>
 <CAAZOf24yhpSBd1926v7T=qDwqvFfLsWMJeMKTafeZ=69hJ4rdw@mail.gmail.com>
From: Ivan Orlov <ivan.orlov0322@gmail.com>
In-Reply-To: <CAAZOf24yhpSBd1926v7T=qDwqvFfLsWMJeMKTafeZ=69hJ4rdw@mail.gmail.com>
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > I'm not sure what are the rules around here but I prefer
 to use brackets > more generously. I think in this particular case they can
 just make the code less readable (considering they will not change the
 behavior
 in any way). However, this is eternal discussion and I saw examples of both
 in [...] 
 Content analysis details:   (-1.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [ivan.orlov0322[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ivan.orlov0322[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.47 listed in wl.mailspike.net]
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1pb38J-0003a2-Bp
Subject: Re: [V9fs-developer] [PATCH] 9P FS: Fix wild-memory-access write in
 v9fs_get_acl
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
Cc: lucho@ionkov.net, ericvh@gmail.com, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org,
 syzbot+cb1d16facb3cc90de5fb@syzkaller.appspotmail.com,
 v9fs-developer@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


> I'm not sure what are the rules around here but I prefer to use brackets 
> more generously.

I think in this particular case they can just make the code less 
readable (considering they will not change the behavior in any way). 
However, this is eternal discussion and I saw examples of both in the 
kernel sources.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
