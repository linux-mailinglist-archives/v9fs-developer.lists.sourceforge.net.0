Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3824D583E
	for <lists+v9fs-developer@lfdr.de>; Fri, 11 Mar 2022 03:40:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nSVCO-0001pm-Qz; Fri, 11 Mar 2022 02:40:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <eki-net-info@coaqaxe.cn>) id 1nSVCM-0001pf-Ur
 for v9fs-developer@lists.sourceforge.net; Fri, 11 Mar 2022 02:40:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fo3rHgUET+P7zQlDbht5Up5G3az94f+t0Ej55cNjcuA=; b=TWCW8A63pda21ZZRIs/nOSJ+Pu
 7wmgaxwksxTFtQKZrpR6hPnSjVvbp58AK2sBcAruIqqwhvh7tO4j2BUAlGN4q73kR8YOkLkJobUz6
 V2aLkrkwwwx61o92iA83aBaqsQ3VTKXH1Qc3TTeSeSYPuKcTiH5oRfNjopOVztMANMzs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fo3rHgUET+P7zQlDbht5Up5G3az94f+t0Ej55cNjcuA=; b=a
 ++pWUAGnEN4cpt7m3/Rjc64iTSNMa4fApqhM1F4onJ/nDqRia3LaQd2HrOkyJ3e/gJonXPIVM5vsg
 dCFUKGBfCmLkhCEhFCIQCbGhigRCE671AsEL5bBodZja4g5msJtmrWaAS6G8r1T53qn96YAeuudoC
 waWg0eE5myvGTWS8=;
Received: from [134.122.143.27] (helo=coaqaxe.cn)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nSVCH-0006nu-Ed
 for v9fs-developer@lists.sourceforge.net; Fri, 11 Mar 2022 02:40:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=defult; d=coaqaxe.cn; 
 h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type;
 i=eki-net-info@coaqaxe.cn;
 bh=fo3rHgUET+P7zQlDbht5Up5G3az94f+t0Ej55cNjcuA=;
 b=hEJjcTnMozpxOjio6onTr8xtgWKaHQ8IKBC3a7hDgTh+OFBtwhvYjYg3XsfRTQhF2FWVUBXJh/2Z
 281WGAeTmijigvK6r4RbR3at+9+RYKA0UsIk0dNBhuskq0Lcl0mZYv19Tyb5Zy5y+b9VCDU2jMa2
 2LiUPblclyM26tPdr1c=
From: eki-net.com <eki-net-info@coaqaxe.cn>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Fri, 11 Mar 2022 10:19:46 +0800
Message-ID: <00eaff6c5522$fa042ba8$cd3344d6$@uvrtcri>
MIME-Version: 1.0
X-Spam-Score: 3.6 (+++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  日頃より「えきねっと」をご利用いただきありがとうございます。
    「えきねっと」は 2022 年 3月 11 (日)にサービスをリニューアルいたしました。これ
    に伴い、「えきねっと」利用規約・会員規約を変更し、最後にロ�
    [...] 
 
 Content analysis details:   (3.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  2.5 URIBL_DBL_PHISH        Contains a Phishing URL listed in the Spamhaus
                             DBL blocklist
                             [URIs: ledzs.com.cn]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1nSVCH-0006nu-Ed
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?44CQ6YeN6KaB44CR44GI44GN44Gt44Gj44Go?=
	=?utf-8?b?44Ki44Kr44Km44Oz44OI44Gu6Ieq5YuV6YCA5Lya5Yem55CG44Gr44Gk?=
	=?utf-8?b?44GE44Gm?=
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

DQoNCg0KDQoNCg0KDQrml6XpoIPjgojjgorjgIzjgYjjgY3jga3jgaPjgajjgI3jgpLjgZTliKnn
lKjjgYTjgZ/jgaDjgY3jgYLjgorjgYzjgajjgYbjgZTjgZbjgYTjgb7jgZnjgIINCg0K44CM44GI
44GN44Gt44Gj44Go44CN44GvIDIwMjIg5bm0IDPmnIggMTEgKOaXpSnjgavjgrXjg7zjg5Pjgrnj
gpLjg6rjg4vjg6Xjg7zjgqLjg6vjgYTjgZ/jgZfjgb7jgZfjgZ/jgILjgZPjgowg44Gr5Ly044GE
44CB44CM44GI44GN44Gt44Gj44Go44CN5Yip55So6KaP57SE44O75Lya5ZOh6KaP57SE44KS5aSJ
5pu044GX44CB5pyA5b6M44Gr44Ot44Kw44Kk44Oz44KS44GX44Gf5pel44KI44KK6LW3566X44GX
IOOBpu+8kuW5tOS7peS4iuOAjOOBiOOBjeOBreOBo+OBqOOAjeOBruOBlOWIqeeUqO+8iOODreOC
sOOCpOODs++8ieOBjOeiuuiqjeOBp+OBjeOBquOBhOOAjOOBiOOBjeOBreOBo+OBqOOAjeOCouOC
q+OCpuODs+ODiCDjga/jgIHoh6rli5XnmoTjgavpgIDkvJrlh6bnkIbjgZXjgZvjgabjgYTjgZ/j
gaDjgY/jgZPjgajjgajjgYTjgZ/jgZfjgb7jgZfjgZ/jgILjgarjgYrjgIHlr77osaHjgqLjgqvj
gqbjg7Pjg4jjga7oh6rli5XpgIDkvJrlh6bnkIbjgpLjgIHmnKzopo/ntITjgavln7rjgaXjgY3j
gIEyMDIyIOW5tCAzIOaciCAzMSDml6Uo5pyIKeOCiOOCiumghuasoeOAgeWun+aWveOBleOBm+OB
puOBhOOBn+OBoOOBjeOBvuOBmeOAgg0KDQrvvJLlubTku6XkuIrjg63jgrDjgqTjg7PjgZfjgabj
gYTjgarjgYTjgYrlrqLjgZXjgb7jgafjgIHku4rlvozjgoLjgIzjgYjjgY3jga3jgaPjgajjgI3j
gpLjgZTliKnnlKjjgYTjgZ/jgaDjgZHjgovloLTlkIgg44Gv44CBMjAyMiDlubQgMyDmnIggMTEg
5pelKOaciCnjgojjgorjgoLliY3jgavjgIHkuIDluqbjg63jgrDjgqTjg7Pmk43kvZzjgpLjgYrp
oZjjgYTjgYTjgZ/jgZfjgb7jgZnjgIINCg0K4oeS44Ot44Kw44Kk44Oz44Gv44GT44Gh44KJDQoN
CuKAu+OBiOOBjeOBreOBo+OBqOODiOODg+ODl+ODmuODvOOCuOWPs+S4iuOBruODreOCsOOCpOOD
s+ODnOOCv+ODs+OCiOOCiuODreOCsOOCpOODs+OBl+OBpuOBj+OBoOOBleOBhOOAgg0KDQog44GK
5ZWP44GE5ZCI44KP44Gb5YWIDQog44GI44GN44Gt44Gj44Go44K144Od44O844OI44K744Oz44K/
44O8DQogVEVMIDA1MC0yMDE2LTUwMDANCiDlj5fku5jmmYLplpMgOOaZgjAw5YiG772eMjLmmYIw
MOWIhg0KIOOCteOCpOODiOmBi+WWtuODu+euoeeQhg0KIEpS5p2x5pel5pys44ON44OD44OI44K5
44OG44O844K344On44OzDQotLS0tLS0tLS0tLS0tLS0tLS0tLQ0KDQrjgarjgYrjgIHjgqLjgqvj
gqbjg7Pjg4jjgYzpgIDkvJrlh6bnkIbjgZXjgozjgZ/loLTlkIjjgoLjgIHmlrDjgZ/jgavjgqLj
gqvjgqbjg7Pjg4jnmbvpjLLvvIjnhKHmlpnnmbvpjLLvvInjgZfjgabjgYTjgZ8g44Gg44GP44GT
44Go44Gn44GZ44GQ44Gr44CM44GI44GN44Gt44Gj44Go44CN44KS44GU5Yip55So44GE44Gf44Gg
44GP44GT44Go44GM44Gn44GN44G+44GZ44Gu44Gn44CB5LuK5b6M44KC44GU5oSb6aGn44GE44Gf
IOOBoOOBkeOBvuOBmeOCiOOBhuOCiOOCjeOBl+OBj+OBiumhmOOBhOOBhOOBn+OBl+OBvuOBmeOA
gg0KDQoNCg0KDQoNCg0KIENvcHlyaWdodCDCqSBKUiBFYXN0IE5ldCBTdGF0aW9uIENvLixMdGQu
IEFsbCBSaWdodHMgUmVzZXJ2ZWQuDQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVy
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0
cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
