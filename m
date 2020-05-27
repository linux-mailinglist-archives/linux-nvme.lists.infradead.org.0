Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC031E4F64
	for <lists+linux-nvme@lfdr.de>; Wed, 27 May 2020 22:36:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T52d6LS8oQo6Z0V8MLOxTkq9hR9kpOwbHVEm3hXOKe4=; b=sreWxfDxNG2tc6d/osew75OKF
	QD75U7Nuv+cTcwQKySUfxtZF/Thqk4qDhqX1YXLH3z2Ei5ONf2tTuZaNTszWPo32gG+KrCxH6Um57
	wT87TuqMzRhLrtuYBZPsdEd1aftEPWVTin7jxvu9gFdb0cVyT2yh5zv+mMraay10Z1h8RaWR2ciyp
	6oS6wYUMx/OBa+pugIx/w6ouIrPPAE4JF2RMLu7uD1hcFtX7VfnaZjjWEpD4JaQJ04TKiX/uzwNro
	TkSMQkABiCZ8xwTxFxaB1STo4iPxcG0seZP3zV0PJCT2QXrnOcqmeo8dOwTE30PbgMuHo7eLdezNe
	ope2woJrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je2nC-0000IV-K7; Wed, 27 May 2020 20:36:50 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je2n8-0000Hw-0T
 for linux-nvme@lists.infradead.org; Wed, 27 May 2020 20:36:47 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04RKVdJC069894;
 Wed, 27 May 2020 20:36:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=QCNlFXAc5VlxGXHjhiVc7GUQzL8ctiZU7ALJtOsVino=;
 b=xNwO5tiFqvyT5HZBS93fz/ot4hDqRjwLBStYDExRCrGCRdtGAGI5zJFbSHJZuafjKHuD
 pKwF04UlOyCbFDVRlpMO5G3LMp/vziUqSzjOL/p/0MEaCT7mC18x2HJ7K2yAZCRPxdim
 xaY99ewWARqf1KVfwhnI3KkFBVnzy4/lzA0x9BGBg0UAtL0iIA6mGyDosRLUETsGb4Hi
 TC6Cz1BH/XL+oZ8IHFF4vRO23vSp4KuN7idzdCtwIfkAxtJ6SMLuNHyMEknK15f//BoY
 2C0NHGOinggGoUC7EiO1VP8l3iFZ+F4TpAjLHGBwmSUtaPfiMTL6UyVfP4HgmFdWoFNd xQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 316u8r1n19-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 27 May 2020 20:36:36 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04RKT7aP106120;
 Wed, 27 May 2020 20:36:35 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 317ddrf819-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 27 May 2020 20:36:35 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04RKaYdf014409;
 Wed, 27 May 2020 20:36:34 GMT
Received: from dhcp-10-76-241-128.usdhcp.oraclecorp.com (/10.76.241.128)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 27 May 2020 13:36:34 -0700
Subject: Re: [PATCH] nvme: cancel requests for real
To: Sagi Grimberg <sagi@grimberg.me>, Keith Busch <kbusch@kernel.org>,
 linux-nvme@lists.infradead.org, hch@lst.de
References: <20200527190913.3461503-1-kbusch@kernel.org>
 <cb108e7e-d386-883c-4d4a-64e517891220@grimberg.me>
From: Alan Adamson <alan.adamson@oracle.com>
Message-ID: <b8a076a3-62e9-a878-f11d-7116b1848caf@oracle.com>
Date: Wed, 27 May 2020 13:39:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <cb108e7e-d386-883c-4d4a-64e517891220@grimberg.me>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9634
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 bulkscore=0 mlxscore=0
 phishscore=0 adultscore=0 suspectscore=3 spamscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005270157
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9634
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0
 priorityscore=1501 spamscore=0 cotscore=-2147483648 suspectscore=3
 phishscore=0 clxscore=1015 mlxlogscore=999 bulkscore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005270157
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_133646_138998_BC747731 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: axboe@kernel.dk
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Ck9uIDUvMjcvMjAgMToxOCBQTSwgU2FnaSBHcmltYmVyZyB3cm90ZToKPgo+PiBPbmNlIHRoZSBk
cml2ZXIgZGVjaWRlcyB0byBjYW5jZWwgcmVxdWVzdHMsIHRoZSBjb25jZXB0IG9mIHRob3NlCj4+
IHJlcXVlc3RzIHRpbWluZyBvdXQgc2hvdWxkIG5vIGxvbmdlciBleGlzdC4gU2luY2Ugd2UgY2Fu
J3Qgc3RvcCBmYWtlCj4+IHRpbWVvdXRzIGZyb20gcHJldmVudGluZyBhIGZvcmNlZCByZWNsYWlt
LCBjb250aW51ZSBjb21wbGV0aW5nIHRoZSBzYW1lCj4+IHJlcXVlc3QgdW50aWwgdGhlIGJsb2Nr
IGxheWVyIGlzbid0IHRvbGQgdG8gcHJldGVuZCB0aGF0IGRpZG4ndCBoYXBwZW4uCj4+Cj4+IFNp
Z25lZC1vZmYtYnk6IEtlaXRoIEJ1c2NoIDxrYnVzY2hAa2VybmVsLm9yZz4KPj4gLS0tCj4+IMKg
IGRyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYyB8IDIgKy0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252
bWUvaG9zdC9jb3JlLmMgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPj4gaW5kZXggYmE4NjBl
ZmQyNTBkLi43MmU1OTczZGRhM2EgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L2Nv
cmUuYwo+PiArKysgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPj4gQEAgLTMxMCw3ICszMTAs
NyBAQCBib29sIG52bWVfY2FuY2VsX3JlcXVlc3Qoc3RydWN0IHJlcXVlc3QgKnJlcSwgCj4+IHZv
aWQgKmRhdGEsIGJvb2wgcmVzZXJ2ZWQpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gdHJ1
ZTsKPj4gwqAgwqDCoMKgwqDCoCBudm1lX3JlcShyZXEpLT5zdGF0dXMgPSBOVk1FX1NDX0hPU1Rf
QUJPUlRFRF9DTUQ7Cj4+IC3CoMKgwqAgYmxrX21xX2NvbXBsZXRlX3JlcXVlc3QocmVxKTsKPj4g
K8KgwqDCoCB3aGlsZSAoIWJsa19tcV9jb21wbGV0ZV9yZXF1ZXN0KHJlcSkpOwo+Cj4gTWF5YmUg
YWRkIGNvbmRfcmVzY2hlZCBpbiB0aGUgbG9vcD8ganVzdCB0byBwbGF5IG5pY2UgaW4gY2FzZSBz
b21ldGhpbmcKPiBpcyB3cm9uZz8KCgpJcyB0aGlzIGEgbnZtZSBpc3N1ZSBvciBhIGJsb2NrIGlz
c3VlP8KgIE15IG9yaWdpbmFsIGZpeCB3YXMgaW4gdGhlIGJsb2NrIApsYXllci4KCi0tLSBhL2Js
b2NrL2Jsay10aW1lb3V0LmMKKysrIGIvYmxvY2svYmxrLXRpbWVvdXQuYwpAQCAtMjIsMTAgKzIy
LDEwIEBAIHN0YXRpYyBpbnQgX19pbml0IHNldHVwX2ZhaWxfaW9fdGltZW91dChjaGFyICpzdHIp
CgppbnQgYmxrX3Nob3VsZF9mYWtlX3RpbWVvdXQoc3RydWN0IHJlcXVlc3RfcXVldWUgKnEpCnsK
LcKgwqDCoMKgwqDCoCBpZiAoIXRlc3RfYml0KFFVRVVFX0ZMQUdfRkFJTF9JTywgJnEtPnF1ZXVl
X2ZsYWdzKSkKLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA7Ci0KLcKgwqDC
oMKgwqDCoCByZXR1cm4gc2hvdWxkX2ZhaWwoJmZhaWxfaW9fdGltZW91dCwgMSk7CivCoMKgwqDC
oMKgwqAgaWYgKHRlc3RfYml0KFFVRVVFX0ZMQUdfRkFJTF9JTywgJnEtPnF1ZXVlX2ZsYWdzKSAm
JgorwqDCoMKgwqDCoMKgwqDCoMKgwqAgIWJsa19xdWV1ZV9xdWllc2NlZChxKSkKK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHNob3VsZF9mYWlsKCZmYWlsX2lvX3RpbWVvdXQs
IDEpOworwqDCoMKgwqDCoMKgIHJldHVybiAwOwp9CgpzdGF0aWMgaW50IF9faW5pdCBmYWlsX2lv
X3RpbWVvdXRfZGVidWdmcyh2b2lkKQotLSAKCkFsYW4KCgoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1udm1lIG1haWxpbmcgbGlzdApsaW51
eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
