Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F452B34C9
	for <lists+v9fs-developer@lfdr.de>; Sun, 15 Nov 2020 13:08:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1keGpI-0005cG-7F; Sun, 15 Nov 2020 12:08:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <admin@bnupg.com>) id 1keGpH-0005bm-4Z
 for v9fs-developer@lists.sourceforge.net; Sun, 15 Nov 2020 12:08:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Type:Mime-Version:Message-ID:Subject
 :To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j9SDbUWr3CvWBfHBuFI3KdKUJ7cLUZqG59jLHlqYMVw=; b=Y+25GP72YA5qDGLn8B0L5ilauG
 ArBb076MHVfycs7hvLWMiG41T4zWgr0HM16vcB7bkDU/0Ss+A4bS6ZwMNekThKwqrpH1RqBmButcm
 8a0G7wd/ZkJCSY/1nOFvFY2JOUVtqpZ54k/k1Cvm1xmUWLKtJTfvWLx6AsMS9i7lZ434=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Type:Mime-Version:Message-ID:Subject:To:From:Date:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=j9SDbUWr3CvWBfHBuFI3KdKUJ7cLUZqG59jLHlqYMVw=; b=H
 LERLa52lcuDnlJv6fOce0SMlzvSmgVFRm4MOnzS73yUMPngG71O/oop7J1EFDj5Utrwz8GfyzIFYj
 9kZv31nqMZva4wanDL7/e/bVdUykfyFKc7YcxgadYvveuuxNhqCkkEiSK8elx1Zk4I4PwvROlJc8S
 FGMVDeuhE14N7bwA=;
Received: from [124.205.5.185] (helo=bnup.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1keGp9-00CVEx-Ju
 for v9fs-developer@lists.sourceforge.net; Sun, 15 Nov 2020 12:08:11 +0000
Received: from yahoo2.com.cn (unknown [120.38.215.227])
 by localhost.localdomain (Coremail) with SMTP id
 AQAAfwD3naUrHbFfU0FXAA--.11999S2; 
 Sun, 15 Nov 2020 20:20:59 +0800 (CST)
Date: Sun, 15 Nov 2020 20:06:18 +0800
From: "Server"
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <20201115200630281646@bnupg.com>
X-Priority: 1 (Highest)
X-mailer: Foxmail 6, 13, 102, 15 [cn]
Mime-Version: 1.0
X-CM-TRANSID: AQAAfwD3naUrHbFfU0FXAA--.11999S2
Authentication-Results: localhost.localdomain; spf=neutral smtp.mail=a
 dmin@bnupg.com;
X-Coremail-Antispam: 1UD129KBjvdXoW7Jr43Zw4xXF43AF48Cr1kuFg_yoWxurcEgF
 42vr98KFZxtanxtr1Ykw1ku3yFg3WaqF1xurZ5XFW2gFn5tw1Fyr47W3yFgrZ7XFn7tFn7
 Wws7uw47Zr1kXjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUIcSsGvfJ3UbIYCTnIWIevJa73UjIFyTuYvj4RJUUUUUUUU
X-CM-SenderInfo: pdgpx0o6eq313jof0z/
X-Spam-Score: 4.5 (++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: 204.44.71.206]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
 0.0 NORMAL_HTTP_TO_IP      URI: URI host has a public dotted-decimal IPv4
 address
 1.0 HTML_MESSAGE           BODY: HTML included in message
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 2.5 TVD_SPACE_RATIO_MINFP  Space ratio (vertical text obfuscation?)
X-Headers-End: 1keGp9-00CVEx-Ju
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?6YKu5Lu257O757uf5Y2H57qn6YCa55+lLWpo?=
 =?utf-8?q?d?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

DQoNCuaCqOWlve+8mnY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldA0K5oiR5Lus
5peg5rOV6K+G5Yir5oKo5pyA6L+R55m75b2V55qE6K6+5aSH5oiW5L2N572u77yM5Zug5q2k5oiR
5Lus5biM5pyb56Gu6K6k5oKo5oul5pyJ5q2k6LSm5oi377yM5Li65LqG5a6J5YWo6LW36KeBDQrm
iJHku6zopoHnoa7kv53ov5nmmK/mgqjnmoTotKbmiLfjgILor7fmjInnhafku6XkuIvpk77mjqXm
m7TmlrDmgqjnmoTnlLXlrZDpgq7ku7blnLDlnYANCueCueWHu+i/memHjOehruiupOabtOaWsA0K
5aaC5rKh5pyJ5oyJ5pe26Ze05YaF5a6M5oiQ6K6k6K+B77yM566h55CG5ZGY5bCG5Lya6K6k5Li6
5piv5peg5Lq65L2/55So55qE6YKu566x5bm25pqC5YGc5pyN5Yqh77yBDQrmnKzmrKHmm7TmlrDl
kI7kvJroh6rliqjlj5HpgIHmiJDlip/pgq7ku7bliLDmgqjnmoTotKbmiLfvvIzor7fms6jmhI/l
j4rml7bmn6XmlLbjgIINCumCrueuseeuoeeQhuWRmOWPkemAgeS6jiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IDIwMjAvMTEvMTUgICAgIA0KDQrlpoLmnpzmgqjmnInku7vkvZXnlpHpl67or7forr/pl67lj43l
noPlnL7pgq7ku7bmlK/mjIHnq5nngrnjgIIgDQrnur/kuIrpmpDnp4HmlL/nrZYgCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1h
aWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
