Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1151FB22A
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jun 2020 15:33:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mVD7kPXxJnA+2iJnl3Qan8wFQKRtOH10ZSJiL/bh8mw=; b=bU+PjgYd4CGJTY4udR1Y6bC7a
	Mp1+FSRoZhQXmOWOEabxJBxKV5QHVKqSk2QQ2H6I87REMdxl4R4uRWRmPRoY7vFwpnns9c6vLF5Dt
	SXbkiYU1Tzhpati3hn8CUdUfvD8MU2UZfg7KST6ly0/CuMeAxN2jGtNWZa/Tt36IimjcmB9o3VAMK
	ioXd3LElmpcvEtB6nFr+BmSUbNMdwDhn1q6inYBOdHXGKgC1HUuXIUyhqkDdF2h1u/iXl+2lnUxIv
	q/AYRM4K93w8A8DhjN+0/KJFO5e9w5ekhI0+37ioXpPWtJBv6oRC/9lyCPQUqwIATjR0LTLdfnsdM
	J4O0UnIvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlBi4-0004dn-IX; Tue, 16 Jun 2020 13:33:04 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlBhl-0004aG-0t
 for linux-nvme@lists.infradead.org; Tue, 16 Jun 2020 13:32:55 +0000
Received: by mail-wm1-x341.google.com with SMTP id l17so2918964wmj.0
 for <linux-nvme@lists.infradead.org>; Tue, 16 Jun 2020 06:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lightnvm-io.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=4m4ZglLowNs+DurcayIT6i2YoXzBpAduaR/DP9cXci4=;
 b=vH+q5JDhSpxI5oEDTF6difbUyWVMNTERRodyEIyQOlG4tYGCwkYBCdxqZSGUimd2RD
 CeYHPbqccvp1AZiTHYIhkSeJx3mUU79x323gNW9LicxI+sY97lduyT1mNho/1LQ0Y5Fe
 LFaSVH+FXoA/uOVC6+sK8dRLkRDWXuLG2uWWYiak1NdiwKq283ETdATtPsH0Ve2LIB+T
 f7Gu+vveLEid6ze91b/yxhwoSo6dQBgE70kx83r1FA1lmcgYf8TXh1wwruCEyhmHaNUq
 pRMXq4fdRA9o06Z0S4wUAaaGmLCRUA/v866ox6ORLcdd/h1Wp5srZi5UtXcb+D+Dk3+H
 uDVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=4m4ZglLowNs+DurcayIT6i2YoXzBpAduaR/DP9cXci4=;
 b=tCDxRVQkcTxAUeFGeEBT20BmHGYSxSmc+1RIElB4M+zNpYOJOzboc6/sBGLs59MNt4
 z4bmgOghv+Ht7zTNxb8eZtgWQDIybT8f6C9yOwh8wzUWlyYBo+0uh01RSscqCOujmgjK
 xoZK8FYqgvRhcOrNWbUDEm/jrfH4FaZDYdmNWusKQwIWrkqiX5ncXXwYvouuHD8/kcNi
 5mvm7SIH4RmcABL1p9/2OI9Vd9L8l5okgf/7BVr7/EBH7tEh5M24/D0PxvgJ3mqga1nO
 h3TuxI2dhlqXyPisSX/cSrM0Zi8a3/bAdoT7TRu9kbntufKnwR+lmGyR0a/qLmxu/p8T
 kaLg==
X-Gm-Message-State: AOAM532cqoKj3h7RFvvpkBFq9UrDLs/UEJYT8gRcM280qvXqYHHdSZhl
 ymkzQGU4CHlO9ubZvoQYgFYWgQ==
X-Google-Smtp-Source: ABdhPJxwKk5tExHQjvgJMI+SahwLq2Ic4Plenkek8H4YyWO+oHnleTZ4lpkV5PiCDxo5ztEgkQAw0g==
X-Received: by 2002:a7b:c343:: with SMTP id l3mr3285858wmj.178.1592314363077; 
 Tue, 16 Jun 2020 06:32:43 -0700 (PDT)
Received: from [10.0.0.6] (xb932c246.cust.hiper.dk. [185.50.194.70])
 by smtp.gmail.com with ESMTPSA id b81sm4345365wmc.5.2020.06.16.06.32.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Jun 2020 06:32:42 -0700 (PDT)
Subject: Re: [PATCH 5/5] nvme: support for zoned namespaces
To: Judy Brock <judy.brock@samsung.com>,
 Damien Le Moal <Damien.LeMoal@wdc.com>, =?UTF-8?Q?Javier_Gonz=c3=a1lez?=
 <javier@javigon.com>
References: <20200615233424.13458-1-keith.busch@wdc.com>
 <20200615233424.13458-6-keith.busch@wdc.com>
 <20200616104142.zxw25txhsg2eyhsb@mpHalley.local>
 <d433450a-6e18-217c-d133-ea367d8936be@lightnvm.io>
 <20200616120018.en337lcs5y2jh5ne@mpHalley.local>
 <cf899cd9-c3de-7436-84d4-744c0988a6c9@lightnvm.io>
 <20200616122448.4e3slfghv4cojafq@mpHalley.local>
 <CY4PR04MB3751CC8FE4BDFC256F9E9CD1E79D0@CY4PR04MB3751.namprd04.prod.outlook.com>
 <CGME20200616130815uscas1p1be34e5fceaa548eac31fb30790a689d4@uscas1p1.samsung.com>
 <4a97bb114ece452c80f08b96d6cbc11d@samsung.com>
From: =?UTF-8?Q?Matias_Bj=c3=b8rling?= <mb@lightnvm.io>
Message-ID: <1a4649d4-2021-e6bb-6bb1-f5f7efea628c@lightnvm.io>
Date: Tue, 16 Jun 2020 15:32:42 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <4a97bb114ece452c80f08b96d6cbc11d@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_063245_101011_C0F4172C 
X-CRM114-Status: GOOD (  24.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jens Axboe <axboe@kernel.dk>, Niklas Cassel <Niklas.Cassel@wdc.com>,
 Ajay Joshi <Ajay.Joshi@wdc.com>, Sagi Grimberg <sagi@grimberg.me>,
 Keith Busch <Keith.Busch@wdc.com>, Dmitry Fomichev <Dmitry.Fomichev@wdc.com>,
 Aravind Ramesh <Aravind.Ramesh@wdc.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Hans Holmberg <Hans.Holmberg@wdc.com>, Christoph Hellwig <hch@lst.de>,
 Matias Bjorling <Matias.Bjorling@wdc.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMTYvMDYvMjAyMCAxNS4wOCwgSnVkeSBCcm9jayB3cm90ZToKPiAgICAgICJUaGUgb24tZ29p
bmcgcmUtd29yayBvZiBidHJmcyB6b25lIHN1cHBvcnQgZm9yIGluc3RhbmNlIG5vdyByZWxpZXMg
MTAwJSBvbiB6b25lIGFwcGVuZCBiZWluZyBzdXBwb3J0ZWQuLi4uIFNvIHRoZSBhcHByb2FjaCBp
czogbWFuZGF0ZSB6b25lIGFwcGVuZCBzdXBwb3J0IGZvciBaTlMgZGV2aWNlcy4uLi4gVG8gYWxs
b3cgb3RoZXIgWk5TIGRyaXZlcywgYW4gZW11bGF0aW9uIHNpbWlsYXIgdG8gU0NTSSBjYW4gYmUg
aW1wbGVtZW50ZWQsIC4uLiAgV2hpbGUgb24gYSBIREQgdGhlICBwZXJmb3JtYW5jZSBwZW5hbHR5
IGlzIG1pbmltYWwsIGl0IHdpbGwgbGlrZWx5IGJlICpzaWduaWZpY2FudCogb24gYSBTU0QuIgo+
Cj4gV293LiBXZWxsIGFzIEkgc2FpZCwgSSBkb24ndCBrbm93IG11Y2ggYWJvdXQgTGludXggYnV0
IGl0IHNvdW5kcyBsaWtlIHRoZSBvbmdvaW5nIHJlLXdvcmsgb2YgYnRyZnMgem9uZSBzdXBwb3J0
IG1hbmRhdGluZyB6b25lIGFwcGVuZCBzaG91bGQgYmUgcmV2aXNpdGVkLgpGZWVsIGZyZWUgdG8g
Z28gYWhlYWQgYW5kIHN1Z2dlc3QgYW4gYWx0ZXJuYXRpdmUgc29sdXRpb24gdGhhdCBzaG93cyB0
aGUgCnNhbWUgcGVyZm9ybWFuY2UgYmVuZWZpdHMuSXQgaXMgb3Blbi1zb3VyY2UsIGFuZCBpZiB5
b3UgY2FuIHNob3cgYW5kIApfaW1wbGVtZW50XyBhIGJldHRlciBzb2x1dGlvbi4gV2Ugd2lsbCBy
ZXZpZXcgaXQgYXMgYW55IG90aGVyIApjb250cmlidXRpb24gdG8gdGhlIG9wZW4tc291cmNlIGVj
by1zeXN0ZW0uCj4gVGhlIHJlYWxpdHkgaXMgdGhlcmUgd2lsbCBiZSBmbGF2b3JzIG9mIFpOUyBk
cml2ZXMgaW4gdGhlIG1hcmtldCB0aGF0IGRvIG5vdCBzdXBwb3J0IEFwcGVuZC4gIEFzIG1hbnkg
b2YgeW91IGtub3csIHRoZSBaUldBIHRlY2huaWNhbCBwcm9wb3NhbCBpcyB3ZWxsIHVuZGVyLXdh
eSBpbiBOVk1lIFpOUyBXRy4KPgo+IEVuc3VyaW5nIHRoYXQgdGhlIGVudGlyZSBMaW51eCB6b25l
IHN1cHBvcnQgZWNvc3lzdGVtIGRlbGliZXJhdGVseSBsb2NrcyB0aGVzZSBkZXZpY2VzIG91dCAv
IG9yIGF0IGJlc3QgY29uc2lnbnMgdGhlbSB0byBhIHNldmVyZWx5IHBlcmZvcm1hbmNlLXBlbmFs
aXplZCBwYXRoLCBlc3BlY2lhbGx5IGdpdmVuIHRoZSBNVUxUSVBMRSBzdGF0ZW1lbnRzIHRoYXQg
aGF2ZSBiZWVuIG1hZGUgaW4gdGhlIE5WTWUgWk5TIFdHIGJ5IG11bHRpcGxlIGNvbXBhbmllcyBy
ZWdhcmRpbmcgdGhlIHVzZSBjYXNlcyBmb3Igd2hpY2ggWm9uZSBBcHBlbmQgaXMgYW4gYWJzb2x1
dGUgZGlzYXN0ZXIgKG5vdCBteSB3b3JkcyksIHNlZW1zIHByZXR0eSBkYXJuIGluYXBwcm9wcmlh
dGUuCgpGaXJzdCBhIG5vdGU6IEkgYXBwcmVjaWF0ZSB5b3UgYnJpbmdpbmcgdXAgZGlzY3Vzc2lv
bnMgdGhhdCB3YXMgbWFkZSAKd2l0aGluIHRoZSBOVk1lIFpOUyBURywgYnV0IHBsZWFzZSBub3Rl
IHRoYXQgdGhvc2UgZGlzY3Vzc2lvbnMgaGFwcGVuZWQgCmluIHRoYXQgZm9ydW0gdGhhdCBpcyB1
bmRlciBOREEuIFRoaXMgaXMgYW4gb3Blbi1zb3VyY2UgbWFpbGluZyBsaXN0LCAKYW5kIHRoZSBj
b250ZW50IHdpbGwgYmUgYXZhaWxhYmxlIG9ubGluZSBmb3IgbWFueSBtYW55IHllYXJzLiBQbGVh
c2UgCnJlZnJhaW4gZnJvbSBkaXNjdXNzaW5nIHRoaW5ncyB0aGF0IGFyZSBub3QgZGVlbWVkIHB1
YmxpYyBieSB0aGUgdGhlIApOVk1lIGJvYXJkIG9mIGRpcmVjdG9ycy4KCk9uIHlvdXIgc3RhdGVt
ZW50LCB0aGVyZSBpcyBubyBkZWxpYmVyYXRlIGxvY2tpbmcgb3V0IG9mIGRldmljZXMgLCBubyAK
bW9yZSB0aGFuIGEgc3BlY2lmaWMgZmVhdHVyZSBoYXMgbm90IGJlZW4gaW1wbGVtZW50ZWQgb3Ig
dGhhdCBhIGRldmljZSAKZHJpdmVyIHRoYXQgaXMgcHJvcGVyaXRhcnkgdG8gYSBjb21wYW55LiBF
dmVyeW9uZSBpcyBmcmVlIHRvIGNvbnRyaWJ1dGUgCnRvIG9wZW4tc291cmNlLiBBcyBKYXZpZXIg
aGFzIHByZXZpb3VzbHkgcG9pbnRlZCBvdXQsIGhlIGludGVuZHMgdG8gCnN1Ym1pdCBhIHBhdGNo
c2V0IHRvIGFkZCB0aGUgbmVjZXNzYXJ5IHN1cHBvcnQgZm9yIHRoZSB6b25lIGFwcGVuZCAKY29t
bWFuZCBBUEkuCgo+Cj4KPgo+Cj4KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+IEZyb206
IGxpbnV4LW52bWUgW21haWx0bzpsaW51eC1udm1lLWJvdW5jZXNAbGlzdHMuaW5mcmFkZWFkLm9y
Z10gT24gQmVoYWxmIE9mIERhbWllbiBMZSBNb2FsCj4gU2VudDogVHVlc2RheSwgSnVuZSAxNiwg
MjAyMCA1OjM2IEFNCj4gVG86IEphdmllciBHb256w6FsZXo7IE1hdGlhcyBCasO4cmxpbmcKPiBD
YzogSmVucyBBeGJvZTsgTmlrbGFzIENhc3NlbDsgQWpheSBKb3NoaTsgU2FnaSBHcmltYmVyZzsg
S2VpdGggQnVzY2g7IERtaXRyeSBGb21pY2hldjsgQXJhdmluZCBSYW1lc2g7IGxpbnV4LW52bWVA
bGlzdHMuaW5mcmFkZWFkLm9yZzsgbGludXgtYmxvY2tAdmdlci5rZXJuZWwub3JnOyBIYW5zIEhv
bG1iZXJnOyBDaHJpc3RvcGggSGVsbHdpZzsgTWF0aWFzIEJqb3JsaW5nCj4gU3ViamVjdDogUmU6
IFtQQVRDSCA1LzVdIG52bWU6IHN1cHBvcnQgZm9yIHpvbmVkIG5hbWVzcGFjZXMKPgo+IE9uIDIw
MjAvMDYvMTYgMjE6MjQsIEphdmllciBHb256w6FsZXogd3JvdGU6Cj4+IE9uIDE2LjA2LjIwMjAg
MTQ6MDYsIE1hdGlhcyBCasO4cmxpbmcgd3JvdGU6Cj4+PiBPbiAxNi8wNi8yMDIwIDE0LjAwLCBK
YXZpZXIgR29uesOhbGV6IHdyb3RlOgo+Pj4+IE9uIDE2LjA2LjIwMjAgMTM6MTgsIE1hdGlhcyBC
asO4cmxpbmcgd3JvdGU6Cj4+Pj4+IE9uIDE2LzA2LzIwMjAgMTIuNDEsIEphdmllciBHb256w6Fs
ZXogd3JvdGU6Cj4+Pj4+PiBPbiAxNi4wNi4yMDIwIDA4OjM0LCBLZWl0aCBCdXNjaCB3cm90ZToK
Pj4+Pj4+PiBBZGQgc3VwcG9ydCBmb3IgTlZNIEV4cHJlc3MgWm9uZWQgTmFtZXNwYWNlcyAoWk5T
KSBDb21tYW5kIFNldCBkZWZpbmVkCj4+Pj4+Pj4gaW4gTlZNIEV4cHJlc3MgVFA0MDUzLiBab25l
ZCBuYW1lc3BhY2VzIGFyZSBkaXNjb3ZlcmVkIGJhc2VkIG9uIHRoZWlyCj4+Pj4+Pj4gQ29tbWFu
ZCBTZXQgSWRlbnRpZmllciByZXBvcnRlZCBpbiB0aGUgbmFtZXNwYWNlcyBOYW1lc3BhY2UKPj4+
Pj4+PiBJZGVudGlmaWNhdGlvbiBEZXNjcmlwdG9yIGxpc3QuIEEgc3VjY2Vzc2Z1bGx5IGRpc2Nv
dmVyZWQgWm9uZWQKPj4+Pj4+PiBOYW1lc3BhY2Ugd2lsbCBiZSByZWdpc3RlcmVkIHdpdGggdGhl
IGJsb2NrIGxheWVyIGFzIGEgaG9zdCBtYW5hZ2VkCj4+Pj4+Pj4gem9uZWQgYmxvY2sgZGV2aWNl
IHdpdGggWm9uZSBBcHBlbmQgY29tbWFuZCBzdXBwb3J0LiBBIG5hbWVzcGFjZSB0aGF0Cj4+Pj4+
Pj4gZG9lcyBub3Qgc3VwcG9ydCBhcHBlbmQgaXMgbm90IHN1cHBvcnRlZCBieSB0aGUgZHJpdmVy
Lgo+Pj4+Pj4gV2h5IGFyZSB3ZSBlbmZvcmNpbmcgdGhlIGFwcGVuZCBjb21tYW5kPyBBcHBlbmQg
aXMgb3B0aW9uYWwgb24gdGhlCj4+Pj4+PiBjdXJyZW50IFpOUyBzcGVjaWZpY2F0aW9uLCBzbyB3
ZSBzaG91bGQgbm90IG1ha2UgdGhpcyBtYW5kYXRvcnkgaW4gdGhlCj4+Pj4+PiBpbXBsZW1lbnRh
dGlvbi4gU2VlIHNwZWNpZmljcyBiZWxvdy4KPj4+Pj4gVGhlcmUgaXMgYWxyZWFkeSBnZW5lcmFs
IHN1cHBvcnQgaW4gdGhlIGtlcm5lbCBmb3IgdGhlIHpvbmUgYXBwZW5kCj4+Pj4+IGNvbW1hbmQu
IEZlZWwgZnJlZSB0byBzdWJtaXQgcGF0Y2hlcyB0byBlbXVsYXRlIHRoZSBzdXBwb3J0LiBJdCBp
cwo+Pj4+PiBvdXRzaWRlIHRoZSBzY29wZSBvZiB0aGlzIHBhdGNoc2V0Lgo+Pj4+Pgo+Pj4+IEl0
IGlzIGZpbmUgdGhhdCB0aGUga2VybmVsIHN1cHBvcnRzIGFwcGVuZCwgYnV0IHRoZSBaTlMgc3Bl
Y2lmaWNhdGlvbgo+Pj4+IGRvZXMgbm90IGltcG9zZSB0aGUgaW1wbGVtZW50YXRpb24gZm9yIGFw
cGVuZCwgc28gdGhlIGRyaXZlciBzaG91bGQgbm90Cj4+Pj4gZG8gdGhhdCBlaXRoZXIuCj4+Pj4K
Pj4+PiBaTlMgU1NEcyB0aGF0IGNob29zZSB0byBsZWF2ZSBhcHBlbmQgYXMgYSBub24taW1wbGVt
ZW50ZWQgb3B0aW9uYWwKPj4+PiBjb21tYW5kIHNob3VsZCBub3QgcmVseSBvbiBlbXVsYXRlZCBT
VyBzdXBwb3J0LCBzcGVjaWFsbHkgd2hlbgo+Pj4+IHRyYWRpdGlvbmFsIHdyaXRlcyB3b3JrIHZl
cnkgZmluZSBmb3IgYSBsYXJnZSBwYXJ0IG9mIGN1cnJlbnQgWk5TIHVzZQo+Pj4+IGNhc2VzLgo+
Pj4+Cj4+Pj4gUGxlYXNlLCByZW1vdmUgdGhpcyB2aXJ0dWFsIGNvbnN0cmFpbnQuCj4+PiBUaGUg
Wm9uZSBBcHBlbmQgY29tbWFuZCBpcyBtYW5kYXRvcnkgZm9yIHpvbmVkIGJsb2NrIGRldmljZXMu
IFBsZWFzZQo+Pj4gc2VlIGh0dHBzOi8vdXJsZGVmZW5zZS5wcm9vZnBvaW50LmNvbS92Mi91cmw/
dT1odHRwcy0zQV9fbHduLm5ldF9BcnRpY2xlc184MTg3MDlfJmQ9RHdJRkF3JmM9SmZlV2xCYTZW
YkR5VFhyYU1FTmp5X2JfMHlLV3VxUTRxWS1GUGh4SzR4OHctVGZnUkJEeWVWNGhWUVFCRWdMMiZy
PVlKTV9RUGsydzFDUklvNU5OQlhuQ1hHek5ubUlJZkdfaVRSczZjaEJmNnMmbT0tZklIV3VGWVUy
R0hpVEoyRnVoVEJncnlwUElKVzBGakxVV1RhSzRjSDljJnM9a2tKOGJKcGlUaktTOVBvb2JEUEhU
ZjExYWdYS05VcGN3NUFzSUV5ZXdaayZlPSAgZm9yIHRoZSBiYWNrZ3JvdW5kLgo+PiBJIGRvIG5v
dCBzZWUgYW55d2hlcmUgaW4gdGhlIGJsb2NrIGxheWVyIHRoYXQgYXBwZW5kIGlzIG1hbmRhdG9y
eSBmb3IKPj4gem9uZWQgZGV2aWNlcy4gQXBwZW5kIGlzIGVtdWxhdGVkIG9uIFpCQywgYnV0IGJl
eW9uZCB0aGF0IHRoZXJlIGlzIG5vCj4+IG1hbmRhdG9yeSBiaXRzLiBQbGVhc2UgZXhwbGFpbi4K
PiBUaGlzIGlzIHRvIGFsbG93IGEgc2luZ2xlIHdyaXRlIElPIHBhdGggZm9yIGFsbCB0eXBlcyBv
ZiB6b25lZCBibG9jayBkZXZpY2UgZm9yCj4gaGlnaGVyIGxheWVycywgZS5nIGZpbGUgc3lzdGVt
cy4gVGhlIG9uLWdvaW5nIHJlLXdvcmsgb2YgYnRyZnMgem9uZSBzdXBwb3J0IGZvcgo+IGluc3Rh
bmNlIG5vdyByZWxpZXMgMTAwJSBvbiB6b25lIGFwcGVuZCBiZWluZyBzdXBwb3J0ZWQuIFRoYXQg
c2lnbmlmaWNhbnRseQo+IHNpbXBsaWZpZXMgdGhlIGZpbGUgc3lzdGVtIHN1cHBvcnQgYW5kIG1v
cmUgaW1wb3J0YW50bHkgcmVtb3ZlIHRoZSBuZWVkIGZvcgo+IGxvY2tpbmcgYXJvdW5kIGJsb2Nr
IGFsbG9jYXRpb24gYW5kIEJJTyBpc3N1aW5nLCBhbGxvd2luZyB0byBwcmVzZXJ2ZSBhIGZ1bGx5
Cj4gYXN5bmNocm9ub3VzIHdyaXRlIHBhdGggdGhhdCBjYW4gaW5jbHVkZSB3b3JrcXVldWVzIGZv
ciBlZmZpY2llbnQgQ1BVIHVzYWdlIG9mCj4gdGhpbmdzIGxpa2UgZW5jcnlwdGlvbiBhbmQgY29t
cHJlc3Npb24uIFdpdGhvdXQgem9uZSBhcHBlbmQsIGZpbGUgc3lzdGVtIHdvdWxkCj4gZWl0aGVy
ICgxKSBoYXZlIHRvIHJlamVjdCB0aGVzZSBkcml2ZXMgdGhhdCBkbyBub3Qgc3VwcG9ydCB6b25l
IGFwcGVuZCwgb3IgKDIpCj4gaW1wbGVtZW50IDIgZGlmZmVyZW50IHdyaXRlIElPIHBhdGggKHNs
b3dlciByZWd1bGFyIHdyaXRlIGFuZCB6b25lIGFwcGVuZCkuIE5vbmUKPiBvZiB0aGVzZSBvcHRp
b25zIGFyZSBpZGVhbCwgdG8gc2F5IHRoZSBsZWFzdC4KPgo+IFNvIHRoZSBhcHByb2FjaCBpczog
bWFuZGF0ZSB6b25lIGFwcGVuZCBzdXBwb3J0IGZvciBaTlMgZGV2aWNlcy4gVG8gYWxsb3cgb3Ro
ZXIKPiBaTlMgZHJpdmVzLCBhbiBlbXVsYXRpb24gc2ltaWxhciB0byBTQ1NJIGNhbiBiZSBpbXBs
ZW1lbnRlZCwgd2l0aCB0aGF0IGVtdWxhdGlvbgo+IGlkZWFsbHkgY29tYmluZWQgdG8gd29yayBm
b3IgYm90aCB0eXBlcyBvZiBkcml2ZXMgaWYgcG9zc2libGUuIEFuZCBub3RlIHRoYXQKPiB0aGlz
IGVtdWxhdGlvbiB3b3VsZCByZXF1aXJlIHRoZSBkcml2ZSB0byBiZSBvcGVyYXRlZCB3aXRoIG1x
LWRlYWRsaW5lIHRvIGVuYWJsZQo+IHpvbmUgd3JpdGUgbG9ja2luZyBmb3IgcHJlc2VydmluZyB3
cml0ZSBjb21tYW5kIG9yZGVyLiBXaGlsZSBvbiBhIEhERCB0aGUKPiBwZXJmb3JtYW5jZSBwZW5h
bHR5IGlzIG1pbmltYWwsIGl0IHdpbGwgbGlrZWx5IGJlIHNpZ25pZmljYW50IG9uIGEgU1NELgo+
Cj4+PiBQbGVhc2Ugc3VibWl0cGF0Y2hlcyBpZiB5b3Ugd2FudCB0byBoYXZlIHN1cHBvcnQgZm9y
IFpOUyBkZXZpY2VzIHRoYXQKPj4+IGRvZXMgbm90IGltcGxlbWVudCB0aGUgWm9uZSBBcHBlbmQg
Y29tbWFuZC4gSXQgaXMgb3V0c2lkZSB0aGUgc2NvcGUKPj4+IG9mIHRoaXMgcGF0Y2hzZXQuCj4+
IFRoYXQgd2Ugd2lsbC4KPj4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4gbGludXgtbnZtZSBtYWlsaW5nIGxpc3QKPj4gbGludXgtbnZtZUBs
aXN0cy5pbmZyYWRlYWQub3JnCj4+IGh0dHBzOi8vdXJsZGVmZW5zZS5wcm9vZnBvaW50LmNvbS92
Mi91cmw/dT1odHRwLTNBX19saXN0cy5pbmZyYWRlYWQub3JnX21haWxtYW5fbGlzdGluZm9fbGlu
dXgtMkRudm1lJmQ9RHdJRkF3JmM9SmZlV2xCYTZWYkR5VFhyYU1FTmp5X2JfMHlLV3VxUTRxWS1G
UGh4SzR4OHctVGZnUkJEeWVWNGhWUVFCRWdMMiZyPVlKTV9RUGsydzFDUklvNU5OQlhuQ1hHek5u
bUlJZkdfaVRSczZjaEJmNnMmbT0tZklIV3VGWVUyR0hpVEoyRnVoVEJncnlwUElKVzBGakxVV1Rh
SzRjSDljJnM9SGVCbkdrY0JNNU9xRVNrVzh5WVlpMkt0dlZ3YmRhbXJiZF9YNVBnR0tCayZlPQo+
Pgo+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtbnZtZSBtYWlsaW5nIGxpc3QKbGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
