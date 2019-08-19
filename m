Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5E394944
	for <lists+linux-nvme@lfdr.de>; Mon, 19 Aug 2019 17:57:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qcpSjxL7f8m+WkxcqT8ML9Y4h76paFK+C+Oy12fkk/s=; b=f14vNzkxAJ/4pgeGo6GXjcbPX
	OB+VyLBWr/PBZA8zcIzggZe7zH43KGJ6FtuKWACT4Dew4FLvBEIMclnYiHNfJUFqtOl//hj1dnJMS
	5u6nzJt47dok5YSWfD1yjmhtFbX42AL2HZXODHXGAd/88Nooc3McgusncEj0S69l1JdLIy0krTSMb
	uKi/1ib+t/+ipqSmcV4K4zBo9zDzp3Remo9BboumecxAMjQSwljHgP8l7BBPL0CwpCyrjCgP7pwHH
	YMl8u/lGlCEZhvBZGROG1cv2mOI+uBLTk1rdmTLY6TErtiXR9B3iz4rdXfovH0pUKXlv0xu5ZSc2y
	d5U196rOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzk1z-00080w-PW; Mon, 19 Aug 2019 15:57:15 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzk1v-0007zr-2l
 for linux-nvme@lists.infradead.org; Mon, 19 Aug 2019 15:57:12 +0000
Received: by mail-pg1-x544.google.com with SMTP id u17so1460102pgi.6
 for <linux-nvme@lists.infradead.org>; Mon, 19 Aug 2019 08:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=NZ5M6FokMFIl6JI1d5V5fOCvvX0MiNcfS0qCjnnVOk0=;
 b=ZuIvppsHpIc2FmTrE/8f5vFkKWid4CEuZ+VUrkFzsyLTuaCWlcgIVqG1RmzwRqd4sF
 rFOqmcZazBJFJSd1BtLd39wbrnIAjhhJRttSk4bVUqCMcHf4HnejkI1q092sb5FUQZvZ
 1jeZW3vpwmUoDHJsRTfKjRdpfWGxPDuC53XLI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=NZ5M6FokMFIl6JI1d5V5fOCvvX0MiNcfS0qCjnnVOk0=;
 b=jU5oSDjDyHTLYPBtAfzyuD8+9/u0GCOE8G6a1bsZBSPyO4ThZ5DuLf0BTit8ZYU1TK
 VTF48FeorgO2SM31rGBPavQV5lPqrY1m0q+zrG6KUDqaHVQXNuAQVjqYmjP/ljaZ0MUr
 kKyU36pyLDuHHsz37AC0NLh3ydExsQlW9u0POs3HYhGVWABH557UoxHoTRaIwUlqhk0e
 /Ecfd+u6CTW/ef9MlRYZhlEAsSFnlVq+/nUS8H2LetYQ263HfRWj6jZ0qaB5jwdWBmxt
 tCf+kas2YzZ4nqkEpFuNT2IDxfhScpdJH1YT8MDw4z/mAzvLy9/bCeVqAjVMrKaVzJNm
 1XHA==
X-Gm-Message-State: APjAAAW1MxD5dy2sTDGWsAE4UtMcyJB2olq5gW0qN5qXsc19vQdIHfBI
 Rgwb3PvVgJWsNtzwdMZX/s5ltg==
X-Google-Smtp-Source: APXvYqxNizINK4C3KjWAcmkjymtlIgjrPfi8J5R4M62aV8ysZ95ZCN8P/z5UWObOueWFqscMvfQeow==
X-Received: by 2002:aa7:8488:: with SMTP id u8mr25314824pfn.229.1566230230189; 
 Mon, 19 Aug 2019 08:57:10 -0700 (PDT)
Received: from [10.69.45.46] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n128sm15695152pfn.46.2019.08.19.08.57.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 08:57:09 -0700 (PDT)
Subject: Re: [PATCH v2] nvme: allow 64-bit results in passthru commands
To: Keith Busch <kbusch@kernel.org>, Marta Rybczynska <mrybczyn@kalray.eu>
References: <89520652.56920183.1565948841909.JavaMail.zimbra@kalray.eu>
 <20190816131606.GA26191@lst.de>
 <469829119.56970464.1566198383932.JavaMail.zimbra@kalray.eu>
 <20190819144922.GC6883@localhost.localdomain>
From: James Smart <james.smart@broadcom.com>
Message-ID: <54e7a40d-a06c-a777-7061-0503051cc6bf@broadcom.com>
Date: Mon, 19 Aug 2019 08:57:01 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190819144922.GC6883@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_085711_124638_C9A59816 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Samuel Jones <sjones@kalray.eu>,
 Guillaume Missonnier <gmissonnier@kalray.eu>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA4LzE5LzIwMTkgNzo0OSBBTSwgS2VpdGggQnVzY2ggd3JvdGU6Cj4gT24gTW9uLCBBdWcg
MTksIDIwMTkgYXQgMTI6MDY6MjNBTSAtMDcwMCwgTWFydGEgUnliY3p5bnNrYSB3cm90ZToKPj4g
LS0tLS0gT24gMTYgQXVnLCAyMDE5LCBhdCAxNToxNiwgQ2hyaXN0b3BoIEhlbGx3aWcgaGNoQGxz
dC5kZSB3cm90ZToKPj4+IFNvcnJ5IGZvciBub3QgcmVwbHlpbmcgdG8gdGhlIGVhcmxpZXIgdmVy
c2lvbiwgYW5kIHRoYW5rcyBmb3IgZG9pbmcKPj4+IHRoaXMgd29yay4KPj4+Cj4+PiBJIHdvbmRl
ciBpZiBpbnN0ZWFkIG9mIHVzaW5nIG91ciBvd24gc3RydWN0dXJlIHdlJ2QganVzdCB1c2UKPj4+
IGEgZnVsbCBudm1lIFNRRSBmb3IgdGhlIGlucHV0IGFuZCBDUUUgZm9yIHRoYXQgb3V0cHV0LiAg
RXZlbiBpZiB3ZQo+Pj4gcmVzZXJ2ZSBhIGZldyBmaWVsZHMgdGhhdCBtZWFucyB3ZSBhcmUgcmVh
ZHkgZm9yIGFueSBuZXdseSB1c2VkCj4+PiBmaWVsZCAoYXQgbGVhc3QgdW50aWwgdGhlIFNRRS9D
UUUgc2l6ZXMgYXJlIGV4cGFuZGVkLi4pLgo+PiBXZSBjb3VsZCBkbyB0aGF0LCBudm1lX2NvbW1h
bmQgYW5kIG52bWVfY29tcGxldGlvbiBhcmUgYWxyZWFkeSBVQVBJLgo+PiBPbiB0aGUgb3RoZXIg
aGFuZCB0aGF0IHdvdWxkIG1lYW4gbm90IGZpbGxpbmcgb3V0IGNlcnRhaW4gZmllbGRzIGxpa2UK
Pj4gY29tbWFuZF9pZC4gQ2FuIGRvIGFuIGFwcHJvYWNoIGxpa2UgdGhpcy4KPiBXZWxsLCB3ZSBu
ZWVkIHRvIHBhc3MgdXNlciBzcGFjZSBhZGRyZXNzZXMgYW5kIGxlbmd0aHMsIHdoaWNoIGlzbid0
Cj4gY2FwdHVyZWQgaW4gc3RydWN0IG52bWVfY29tbWFuZC4KPgpUaGlzIGlzIGdvaW5nIHRvIGJl
IGZ1bi7CoCBJdCdzIGdvaW5nIHRvIGhhdmUgdG8gYmUgYSBjb29wZXJhdGl2ZSBlZmZvcnQgCmJl
dHdlZW4gYXBwIGFuZCB0cmFuc3BvcnQuIFRoZXJlIHdpbGwgYWx3YXlzIG5lZWQgdG8gYmUgc29t
ZSBwYXJ0cyBvZiAKdGhlIFNRRSBmaWxsZWQgb3V0IGJ5IHRoZSB0cmFuc3BvcnQgbGlrZSBTR0ws
IGNvbW1hbmQgdHlwZS9zdWJ0eXBlIGJpdHMsIAphcyB3ZWxsIGFzIGRlYWxpbmcgd2l0aCBidWZm
ZXJzIGFzIEtlaXRoIHN0YXRlcy4gQ29tbWFuZCBJRCBpcyBhbm90aGVyIApvZiB0aG9zZSBmaWVs
ZHMuCgotLSBqYW1lcwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1u
dm1lCg==
