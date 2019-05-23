Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED58D2818F
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 17:46:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3YrNc9jLy0ba87K9W56HjeO0QbMkdweH6DKvtmLzYLc=; b=PUZjj0TnQNV5dGiEDYaVRmY0B
	LsgYf/reKxEuzQuo5TkTxB14jfJs5jvZmLRPsIyIpMNdRr42aTAltap6iNHkUTyw24gdaEhlpV272
	/Ajx24umRHKg4jzKn6UM7bEzEV7mbjlAuoDXqi8XbST1OcQL5dTuHEU1lOXj6w6ztt4urxVpVfq55
	AovhXj7r6QyvoaCBZ2hjojTAOhHWrj+TRwk6qMLPYEzd9rAG4oLsCGUdBEf1Saq/NXsqWS1KilBZ8
	Y1/cDB7PjOvbl7uor1JL6LeQGhy60CO2tOq1huom9mI21xnNd9sgwH0aFXRKf2aZwYEHAMnizlomc
	JO3mYBBqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpva-00060B-T8; Thu, 23 May 2019 15:46:46 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpvW-0005zc-L4
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 15:46:43 +0000
Received: by mail-pg1-x543.google.com with SMTP id o11so3151762pgm.13
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 08:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=s0mTlDWFnGt7OsL/xoCRMmZhklkmDy1ZkCtLgN8to3M=;
 b=e4EqUkkf7TQKeWoOULPgRE7sXBt+Bq7VcSv2dCY3M/Zd6QdhdmQF7LxJxK7RC2uzHt
 NL+GlHaOK0Fgn2wcoaCmrhGKluBMLzbSDXiJcgyo6wRC5EryoMBzC2wFcekI3kobV2wW
 M4aNMy6lxnXlcvmgYfphxRa9Xg5yAIIWoRNEI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=s0mTlDWFnGt7OsL/xoCRMmZhklkmDy1ZkCtLgN8to3M=;
 b=ler6D8gQca4rwAx90k6wHk9bIBr9XO9vgUr7zCuRZsxiqjeGR/A6B4wTVc4owxrjoh
 fga696O5c6Zcn+tPPcm8xV8NH/3zqQ3AagoQxtCxOq730pKW7rN/krovWQlg1epTsWTh
 pqdN2unGK/6fqSa/umqBCjTX3MAyZIrKLeWqGqzLrjSooTeJADv9ano6X4YtaE1M+dWD
 nYLtVp+590TeRN/A8VgmPD0ni4hEp+n8z/Aq/Ir05Ems7yjr9nZIqR+AgYUlj8GYAX5H
 miPR3WDQrxWohpvNE2O/NYYjcYqEaUcekBdKW49u0OXyksy+Eeyspem+1iO8BaN03V1E
 Wnbw==
X-Gm-Message-State: APjAAAXTGAyeADES5Mwi1m1SytlNREYylI2c9DT7GdIlKCTVQz1hI+gl
 Pi+gRx7YYXlM9/gNeaM6ih5bXA==
X-Google-Smtp-Source: APXvYqxcDo+EQ5p+tEuMgrR8JGb6VdnPwfxBdafesBb6xXiIhyRNlwn13dmmi16U1YoIFqZh3qyIEA==
X-Received: by 2002:aa7:8d89:: with SMTP id i9mr105041510pfr.77.1558626401782; 
 Thu, 23 May 2019 08:46:41 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id b35sm807724pjc.15.2019.05.23.08.46.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 08:46:41 -0700 (PDT)
Subject: Re: [PATCH 3/4] nvme-fc: fail reconnect if state change fails
To: Hannes Reinecke <hare@suse.de>, Arun Easi <aeasi@marvell.com>
References: <20190520063624.50338-1-hare@suse.de>
 <20190520063624.50338-4-hare@suse.de>
 <alpine.LRH.2.21.9999.1905221035410.9636@mvluser05.qlc.com>
 <f59abb21-c3e8-1aa3-9246-f4141862aa69@suse.de>
From: James Smart <james.smart@broadcom.com>
Message-ID: <e430d6e0-6f0f-8cc1-aba8-f33faa519267@broadcom.com>
Date: Thu, 23 May 2019 08:46:40 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <f59abb21-c3e8-1aa3-9246-f4141862aa69@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_084642_692336_E94C7192 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS8yMi8yMDE5IDEwOjMzIFBNLCBIYW5uZXMgUmVpbmVja2Ugd3JvdGU6Cj4gT24gNS8yMi8x
OSA3OjQzIFBNLCBBcnVuIEVhc2kgd3JvdGU6Cj4+Cj4+IFF1ZXN0aW9uOiBUaGVyZSBpcyBhIHBh
dGggaW4gbnZtZV9mY19yZXN1bWVfY29udHJvbGxlcigpIHRoYXQgc2NoZWR1bGVzCj4+IGNvbm5l
Y3Rfd29yayB3aGVuIGNvbnRyb2xsZXIgc3RhdGUgaXMgTlZNRV9DVFJMX05FVy4gSSBhbSBub3Qg
cXVpdGUgc3VyZQo+PiB3aGVuIHRoaXMgaXMgZXhlcmNpc2VkOyBidXQgaWYgaXQgZG9lcywgaXQg
Y29uZmxpY3RzIHdpdGggdGhpcwo+PiBleHBlY3RhdGlvbi4KPj4KPiBUbyBteSB1bmRlcnN0YW5k
aW5nLCB0aGUgdHJhbnNpdGlvbiBmcm9tIE5FVyB0byBMSVZFIGlzIG9ubHkgdmFsaWQgZm9yCj4g
UENJOyBOVk1lLW9GIGltcGxlbWVudGF0aW9ucyBzaG91bGQgYWx3YXlzIG1vdmUgdG8gQ09OTkVD
VElORyBmaXJzdCwgaWUKPiB0aGV5IHNob3VsZCBoYXZlIGEgdHJhbnNpdGlvbiBORVcgLT4gQ09O
TkVDVElORyAtPiBMSVZFLgo+Cj4gQ2hlZXJzLAo+Cj4gSGFubmVzCgpJIGNvbmZpcm0gd2hhdCBI
YW5uZXMgc2F5cyAtIHdoZW4gdGhlIGZjIHRyYW5zcG9ydCBtb3ZlZCB0byBhbiAKYXN5bmNocm9u
b3VzIGNvbm5lY3QgdXNpbmcgdGhlIHJlY29ubmVjdCBwYXRoLCBhcyBwYXJ0IG9mIGNvbnRyb2xs
ZXIgCmluaXRpYWwgYWxsb2NhdGlvbiwgaXQgbW92ZXMgZnJvbSBORVcgdG8gKHRlbXBvcmFyaWx5
KSBSRVNFVFRJTkcgdG8gCkNPTk5FQ1RJTkcgdGhlbiBzY2hlZHVsZXMgdGhlIHJlY29ubmVjdCB3
aGljaCBzaG91bGQgZ28gZnJvbSB0aGVyZSB0byAKTElWRSBpbiB0aGUgbm9ybWFsIHBhdGguwqAg
VGhhdCBORVcgc2NoZWR1bGluZyBjb25uZWN0X3dvcmssIGFsdGhvdWdoIApzdGlsbCBwcmVzZW50
IG5vIGxvbmcgb2NjdXJzLiBJdCB3YXMgZnJvbSB0aGUgcHJlLWFzeW5jIGNvbm5lY3QuCgotLSBq
YW1lcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
