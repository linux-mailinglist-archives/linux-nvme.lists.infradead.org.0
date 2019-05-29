Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B5D2D2F0
	for <lists+linux-nvme@lfdr.de>; Wed, 29 May 2019 02:50:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ToJ1vGQ9lDRfWhRFVPNlOGg/30Q62u96usNxdbYZ65U=; b=fKBcPkltvz1beKCA0VRP1UIH7
	bIHbWwknH+mT2vHS3zdjk4ClOJYOaPEpNRDNqt9JuuHHcgjEr71aY7E4Lw+NDnZnXIe754DWB2c27
	L8k0Un8Y74GwfM3dW+YpD7iwb1xHjbQXTxmhSbrcqcK1AEy3/NypEzZTHdGskB3z5OE5M9rFYF3DU
	kvvxfQyIZBTtlQNNFvuqPWLABp/QO4THiXA2Sa91Yae3eCbZL7gRUEHBOG0Zxpfq06Qz1bTBNicIm
	IilkvLmmZf48Abl0dj36uv7vuKXAqvF05WdCh0DVa5hbwcYKanTXNgDIUsE+SAxZi0yLwDBEVH4YA
	x7D54Q9Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVmnd-0000Mg-9g; Wed, 29 May 2019 00:50:37 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVmnY-0000MJ-23
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 00:50:33 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4T0iOn0167959
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 00:50:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=hEf46wQdGFc4iRcidLbJFsyoAzEnQb2M8rhEngU55SU=;
 b=uLTkLbtXUwXD+J2NclSbmI2QIVf/JufN5ClBXY6/vsHmbmp/leYAiKQnxHtZ9qFzDE3Y
 XAJSMmUOJLLydIEvcfIMmptR9NXu2fM/niggCg643L0x2GPaA3oFxrDtXb7ABFEETMSr
 f2IKt9Fz/AAXZFku4zlij86tWnf9f8hWeLZZGDIL7vuMVZesoCc2tddJoqHOuYjgBsxX
 yJ8uyMdNM5fXhQAfRCIsu4be+6r8jg9/5oYiuu0Eai+dVyNbH8EaEMBfHXpeuBMY1ZJ2
 Ahb/urwAjmWVPC4vBAi8s4INVUQ3pWqndCsVXl3DIv1mef8wu2uP6iF6WUnPnc7iFYMr 9A== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2spxbq6f53-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 00:50:28 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4T0nKuG008370
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 00:50:28 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2ss1fn5rky-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 00:50:28 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4T0oRKE023405
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 00:50:27 GMT
Received: from [192.168.1.140] (/47.220.71.223)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 28 May 2019 17:50:27 -0700
Subject: Re: [PATCH] nvme-fc: Add message when creating new controller
To: linux-nvme@lists.infradead.org
References: <20190528182404.3463-1-jsmart2021@gmail.com>
 <alpine.LRH.2.21.9999.1905281624470.9636@mvluser05.qlc.com>
 <06bf2ef9-253e-3292-5cd5-11cae0c40afa@gmail.com>
From: John Donnelly <John.P.Donnelly@Oracle.com>
Message-ID: <6c5ea0a9-edd3-c415-6a67-6b3f5b0bb5e6@Oracle.com>
Date: Tue, 28 May 2019 19:50:24 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <06bf2ef9-253e-3292-5cd5-11cae0c40afa@gmail.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9271
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905290003
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9271
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905290003
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_175032_236947_48BAE2FA 
X-CRM114-Status: GOOD (  25.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS8yOC8xOSA3OjEzIFBNLCBKYW1lcyBTbWFydCB3cm90ZToKPiBPbiA1LzI4LzIwMTkgNDoz
NyBQTSwgQXJ1biBFYXNpIHdyb3RlOgo+PiBPbiBUdWUsIDI4IE1heSAyMDE5LCAxMToyNGFtLCBK
YW1lcyBTbWFydCB3cm90ZToKPj4KPj4+IFdoZW4gbG9va2luZyBhdCBjb25zb2xlIG1lc3NhZ2Vz
IHRvIHRyb3VibGVzaG9vdCwgdGhlcmUgYXJlIG9uZQo+Pj4gbWF5YmUgdHdvIG1lc3NhZ2VzIGJl
Zm9yZSBjcmVhdGlvbiBvZiB0aGUgY29udHJvbGxlciBpcyBjb21wbGV0ZS4KPj4+IEhvd2V2ZXIs
IGEgbG90IG9mIGlvIHRha2VzIHBsYWNlIHRvIHJlYWNoIHRoYXQgcG9pbnQuIEl0J3MgdW5jbGVh
cgo+Pj4gd2hlbiB0aGluZ3MgaGF2ZSBzdGFydGVkLgo+Pj4KPj4+IEFkZCBhIG1lc3NhZ2Ugd2hl
biB0aGUgY29udHJvbGxlciBpcyBmaXJzdCBhdHRlbXB0aW5nIHRvIGJlCj4+PiBjb25uZWN0aW5n
IHRvLiBUaHVzIHdlIGtub3cgd2hhdCBjb250cm9sbGVyIGFuZCBpdHMgTlFOIGlzIGJlaW5nCj4+
PiBwdXQgaW50byBwbGFjZSBmb3IgYW55IHN1YnNlcXVlbnQgc3VjY2VzcyBvciBmYWlsdXJlIG1l
c3NhZ2VzLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEphbWVzIFNtYXJ0IDxqc21hcnQyMDIxQGdt
YWlsLmNvbT4KPj4+IC0tLQo+Pj4gwqAgZHJpdmVycy9udm1lL2hvc3QvZmMuYyB8IDQgKysrKwo+
Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+Pj4KPiAKPj4+ICvCoMKgwqAg
ZGV2X2luZm8oY3RybC0+Y3RybC5kZXZpY2UsCj4+PiArwqDCoMKgwqDCoMKgwqAgIk5WTUUtRkN7
JWR9OiBjcmVhdGluZyBuZXcgY3RybDogTlFOIFwiJXNcIlxuIiwKPj4+ICvCoMKgwqDCoMKgwqDC
oCBjdHJsLT5jbnVtLCBjdHJsLT5jdHJsLm9wdHMtPnN1YnN5c25xbik7Cj4+PiArCj4+Cj4+IEFk
ZGluZyBycG9ydCtscG9ydCBpbmZvcm1hdGlvbiB3b3VsZCBiZSBoZWxwZnVsLiBJdCB3b3VsZCBi
ZSBnb29kIHRvIGhhdmUKPj4gZm9yIGFsbCBtZXNzYWdlcywgYnV0IGF0IGxlYXN0IG9uZSBtZXNz
YWdlIGVzdGFibGlzaGluZyB0aGUgcmVsYXRpb25zaGlwCj4+IHdvdWxkIG1ha2UgaXQgZWFzaWVy
IHdoZW4gbG9va2luZyBhdCBsb2dzLgo+Pgo+PiBKdXN0IHdvbmRlcmluZyBpZiB0aGVyZSBpcyBh
bnkgcmVhc29uIHdoeSBubyBGQyBycG9ydC9scG9ydCBpbmZvCj4+IHdhcyBsb2dnZWQgd2l0aCBh
bnkgb2YgdGhlIG1lc3NhZ2VzIGluIGZjLmM/Cj4gCj4gSSBhY3R1YWxseSBhc2tlZCBteXNlbGYg
dGhlIHNhbWUgcXVlc3Rpb24gYWZ0ZXIgc2VuZGluZyB0aGUgcGF0Y2g6IAo+IHdoZXRoZXIgaGF2
aW5nIGhvc3RfdHJhZGRyIGFuZCB0cmFkZHIgZmllbGRzIGluIHRoYXQgbWVzc2FnZSBtYWRlIHNl
bnNlLiAKPiBJIG9wdGVkIHRvIHN0YXkgYXMgaXMgb25seSBiZWNhdXNlIGl0IGlzIG11Y2ggc2hv
cnRlciAodGhvc2UgV1dOJ3MgYXJlIAo+IGxvbmcpLgo+IAo+IFRoZSBvdGhlciBxdWVzdGlvbiBJ
IGhhZCBpcyB3aGV0aGVyIEkgc2hvdWxkIHByaW50IHRoaXMgb25seSBvbiBpbml0aWFsIAo+IGNy
ZWF0aW9uIG9yIHdoZW5ldmVyIGEgbmV3IGFzc29jaWF0aW9uIGlzIHN0YXJ0ZWQgc28gaXQgcGlj
a3MgdXAgdGhlIAo+IGNhc2VzIG9mIHdoZW4gYSByZWNvbm5lY3Qgc3RhcnQuwqAgT25seSBkaXNh
ZHZhbnRhZ2UgaXMgLSBtb3JlIGxvbmcgCj4gbWVzc2FnZXMgaW4gdGhlIGxvZy4KPiAKPiBJIGNh
biBlYXNpbHkgYmUgY29udmluY2VkIHRvIGRvIHNvbWV0aGluZyBkaWZmZXJlbnQgaWYgeW91IHBy
ZWZlci4KCkkgZmF2b3IgdmVyYm9zZSBtZXNzYWdpbmcKCj4gCj4gLS0gamFtZXMKPiAKPiAKPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LW52
bWUgbWFpbGluZyBsaXN0Cj4gTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cHM6
Ly91cmxkZWZlbnNlLnByb29mcG9pbnQuY29tL3YyL3VybD91PWh0dHAtM0FfX2xpc3RzLmluZnJh
ZGVhZC5vcmdfbWFpbG1hbl9saXN0aW5mb19saW51eC0yRG52bWUmZD1Ed0lDQWcmYz1Sb1AxWXVt
Q1hDZ2FXSHZsWllSOFBaaDhCdjdxSXJNVUI2NWVhcElfSm5FJnI9dDJmUGc5RDg3RjdEOGptMF8z
Q0c5eW9pSUtkUmc0cWNfdGhCdzRiek1oYyZtPS10dmZVSWRKdlgxMVhSclhWTWQ5c3lUSXJJb0pB
Rm53SlA2OEg2RUN6SHcmcz1ENE5GNmpNVGg0S3RkR3pGcV9Eb05mS3JKUE1fblFnMklEcW5HLTNm
M3hRJmU9IAo+IAoKCi0tIApUaGFuayBZb3UsCkpvaG4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52
bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LW52bWUK
