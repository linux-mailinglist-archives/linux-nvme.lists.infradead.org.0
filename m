Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3F025566
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 18:19:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i3iJecUROMqidP8pZJJdtQW+jJyhzRVxos4ZbuhIAOU=; b=PArTyY6lctKHGn+lM3do73zXt
	r19mNuKRf0q9oM41MOc+AULceXM6ZBs2h3ae2Trn15m6Wjb2snq03gPtNb3D8Y/y5En4fX707aD5y
	DpjfMA8zSIqekk+IiXXxy89OycA0aI7gSllaR8DOOqS8j8twGfVaKHfFJxWUTu9bRPMeoNwuhWIrd
	zTVi1xjEhPhHv9SJbQAr2B/UK5NQjVuG1EGebdJXOiLjAmv0UGfmNUJTS2ojgJas5n2nwf2bvQ3Gk
	G0ol7O+H8Xb1UguHlSS0ZXhfi24P1BiaFWQGwxHJ924D8iFpt/PfUDbVff4iN4kQUbDUNfKjzwd2e
	q85v9oa3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7Tc-0002xn-HL; Tue, 21 May 2019 16:18:56 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7TW-0002wv-Vv
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 16:18:52 +0000
Received: by mail-pf1-x443.google.com with SMTP id y11so9300201pfm.13
 for <linux-nvme@lists.infradead.org>; Tue, 21 May 2019 09:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=1We3RcBqkNB5GzlSutP/KGLgLEa4lGJMtJUrsopXlFI=;
 b=SaXdo0XkLBPo+RjGSXaINwAXVuPE6P9z92RyLlmyePc2EpM/+pZpp6Yjmw+/v9nfQG
 eN0flJK+gCkMA6ARwAguznDJB/29VFUl90rHreIdcjwJZ5C2HhqzFhOjNqDnTvXl11Yd
 ZpTRB/5P60gh3vS3Am0NDWsQuwB0RgjZYFo4s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=1We3RcBqkNB5GzlSutP/KGLgLEa4lGJMtJUrsopXlFI=;
 b=eOYNTCv2PyfZPHBNa6krdxSNsVaW29Bh54cTZ8XAScwmdwrIJr50s3Fi2bYxyw5CS0
 gkZ5rN9aOk62j/S7GbvX2CXumogGIJLgfahsV4lxn8MFWJypJ9XOocUtnNfQkvaxCIGK
 O9y3kr5+vfRlArfL8vxRO1tXwuiKUh978y4+lybhswtpBY0svKuI1NIZCqkTsHFqwMJT
 ICnYHwCelVZjrOO4IvqEA8ckZOV+0mnI2Kyauq0sQVLwfLQRO2uOSnoiYGZqVxAvnqmY
 1Hm3K1/Xp/dlmcuHdKuDUlb1nJqItetkuThjxPN1xnblNCOY5elfHvlPo/KnxHgK0TeR
 AsqQ==
X-Gm-Message-State: APjAAAVzKvm5BudEMqBDraUofx/vEDReWAYoYlWJpFz0E9ErPnWX2QSa
 6Da6Bf98GDaEY8IC/DWpbe9Pug8Gq0isfdN1UKSWjdlfmJ9kp2kbXNcTJxCFNEiMPv6Qed+Z/8e
 se95scm55P0LpXclpFn3oJ0kJq/Q2BpHpIPmwg5QVLKLyximkaW991+cMqxNiaFNM77T9ld/bKs
 XXO30Zcg==
X-Google-Smtp-Source: APXvYqzhVrC/m+dArGwhscw7OHA0pbvGcHlLlhQJq2sd/3KXethUPWEmCV4ZHOzF6ZghsR+mGP9lFQ==
X-Received: by 2002:a65:4b88:: with SMTP id t8mr83424960pgq.374.1558455529764; 
 Tue, 21 May 2019 09:18:49 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c23sm44904644pfp.0.2019.05.21.09.18.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 09:18:49 -0700 (PDT)
Subject: Re: [PATCH 3/4] nvme-fc: fail reconnect if state change fails
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20190520063624.50338-1-hare@suse.de>
 <20190520063624.50338-4-hare@suse.de>
From: James Smart <james.smart@broadcom.com>
Message-ID: <2a186bc0-132a-d9ac-b98c-7f5cb2e5c548@broadcom.com>
Date: Tue, 21 May 2019 09:18:46 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190520063624.50338-4-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_091851_028415_0FAC0735 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Ck9uIDUvMTkvMjAxOSAxMTozNiBQTSwgSGFubmVzIFJlaW5lY2tlIHdyb3RlOgo+IElmIHRoZSBm
aW5hbCBzdGF0ZSBjaGFuZ2UgdG8gTElWRSBpbiBudm1lX2ZjX2NyZWF0ZV9hc3NvY2lhdGlvbigp
Cj4gZmFpbHMgdGhlIGNvbnRyb2xsZXIgaXMgbm90IG9wZXJhdGlvbmFsIGFzIG5vIEkvTyBpcyBw
b3NzaWJsZS4KPiBTbyB3ZSBzaG91bGQgYmUgcmV0dXJuaW5nIGFuIGVycm9yIGhlcmUgdG8gcmVz
Y2hlZHVsZSByZWNvbm5lY3QuCj4gQWRkaXRpb25hbGx5IGl0IHNob3VsZCBvbmx5IGJlIGNhbGxl
ZCB3aGlsZSBpbiBDT05ORUNUSU5HIHN0YXRlLCBzbwo+IGFkZCBhIGNoZWNrIGZvciB0aGlzLCB0
b28uCj4KPiBTaWduZWQtb2ZmLWJ5OiBIYW5uZXMgUmVpbmVja2UgPGhhcmVAc3VzZS5jb20+Cj4g
LS0tCgpSZXZpZXdlZC1ieTrCoMKgIEphbWVzIFNtYXJ0wqDCoCA8amFtZXMuc21hcnRAYnJvYWRj
b20uY29tPgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
