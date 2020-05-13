Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFFF1D1E83
	for <lists+linux-nvme@lfdr.de>; Wed, 13 May 2020 21:05:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vuUZwLhpR7WfwS5+zc2mkWloC8WmfA3ImnPwYU1Zl7s=; b=dpLsVcrt3MGxJB/k3GNSmum4C
	IIMVEpSjYUXLaocvVsgcVlRddkaoQHRNaGitGOP3e35sELG4/wz/kLoWo6VGmGIRhh4ArdYrVU3r9
	efmoWb9xcMj9Xfm4+Col1t8lHv6/H2Ak7kFDufxk77+8qcQl8b7/BqCUDhON5IFtgSMPWDldWIYVN
	nVk/2cS/Y0PSnda4fjmL9lqcL+ghBCGAmDtLnlM4sTm3aI6+WJSTg9mLXxMDDudSh1paMumq3CFwW
	0xQFI24m+VVw8Cx9w1I7SNUTfNz1ff4/lVajAhlSU8fZ7BdGuNFDL6SXEFeXRSm9xBtq4oihOBZET
	n3SKQYcRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYwgu-0004eD-2X; Wed, 13 May 2020 19:05:16 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYwgh-00047m-6O
 for linux-nvme@lists.infradead.org; Wed, 13 May 2020 19:05:04 +0000
Received: by mail-pf1-x442.google.com with SMTP id y18so151854pfl.9
 for <linux-nvme@lists.infradead.org>; Wed, 13 May 2020 12:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=YsCP9kZl6w++ugyfJA7Ko5Xc06SH9WMZ7Ybe8x65Cv0=;
 b=QlDMlMm3MrUbyZzZZMU2go3FQBNQLZuXDWXEEDXpXtBF572fxx+uHLyyS+7Xhxa9ox
 iznhYf+0bjbG2LPwyUHcTYVKJmNx9TPBJlRo7hQwfHp0uK/xGbpWEeh7fBc2XFpFF52d
 xcZsPKWtad7rQF/nVB6IoGUrpLTv2Y8umGENo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=YsCP9kZl6w++ugyfJA7Ko5Xc06SH9WMZ7Ybe8x65Cv0=;
 b=VaLy/gcxPsFJi6Ja4xBRZ2zIU6s4+IFqTQ72mn61GJ4o6HyCB2JACfLZ3gFLfpLW0z
 093ux8/qxmjg9aHo5kWoG/TbaAKAHVu+mMSsYdjPoz7ZlX4ZIteumB3WncAKh6TcU7FI
 3oZ3rMXe51KQ2XhMKrNkGBzFc7CppcGJ055OE98xNUuUo7giW9mUQyWEFA9LhwTRyPpy
 6/IjK1uhIIQ6DWtzxLPls1n7g1zNxSd4CMmxfZNVv3VZ1ua3HfEG2Kf66kXyqU6SklJp
 9EwYe1cK3n85oN/kEKQOiZr7OLsRiSR2R58GkbSFKSI7zqjKfaSTHhlUcHap7mBOOLrl
 f5Vg==
X-Gm-Message-State: AOAM533xPCnZ0SuZFo8jgbo4Ul1fn47dQWIQh+mjq+Ul36M15/Khsaay
 752D9t9NMDS29jg1SKfkXVrLrA==
X-Google-Smtp-Source: ABdhPJzM0REdvtxgv0G+OdpZ46psFrMYZPYSIti/7Z+Re7dv1D1THSFiNPmkWVrLiqD+Jt3PGl6ovA==
X-Received: by 2002:a62:6585:: with SMTP id z127mr675611pfb.217.1589396702710; 
 Wed, 13 May 2020 12:05:02 -0700 (PDT)
Received: from [10.230.185.151] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id w83sm272198pfc.34.2020.05.13.12.04.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 12:05:00 -0700 (PDT)
Subject: Re: [PATCH 05/16] nvme: introduce max_integrity_segments ctrl
 attribute
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 kbusch@kernel.org, hch@lst.de, sagi@grimberg.me, martin.petersen@oracle.com,
 jsmart2021@gmail.com, axboe@kernel.dk
References: <20200504155755.221125-1-maxg@mellanox.com>
 <20200504155755.221125-6-maxg@mellanox.com>
From: James Smart <james.smart@broadcom.com>
Message-ID: <bceb78df-9b27-f1b7-5582-8dec0068a8a1@broadcom.com>
Date: Wed, 13 May 2020 12:04:58 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200504155755.221125-6-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_120503_255882_DEE4F9F7 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: vladimirk@mellanox.com, idanb@mellanox.com, israelr@mellanox.com,
 shlomin@mellanox.com, oren@mellanox.com, nitzanc@mellanox.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA1LzQvMjAyMCA4OjU3IEFNLCBNYXggR3VydG92b3kgd3JvdGU6Cj4gVGhpcyBwYXRjaCBk
b2Vzbid0IGNoYW5nZSBhbnkgbG9naWMsIGFuZCBpcyBuZWVkZWQgYXMgYSBwcmVwYXJhdGlvbgo+
IGZvciBhZGRpbmcgUEkgc3VwcG9ydCBmb3IgZmFicmljcyBkcml2ZXJzIHRoYXQgd2lsbCB1c2Ug
YW4gZXh0ZW5kZWQKPiBMQkEgZm9ybWF0IGZvciBtZXRhZGF0YSBhbmQgd2lsbCBzdXBwb3J0IG1v
cmUgdGhhbiAxIGludGVncml0eSBzZWdtZW50Lgo+Cj4gU2lnbmVkLW9mZi1ieTogTWF4IEd1cnRv
dm95IDxtYXhnQG1lbGxhbm94LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBJc3JhZWwgUnVrc2hpbiA8
aXNyYWVsckBtZWxsYW5veC5jb20+Cj4gUmV2aWV3ZWQtYnk6IFNhZ2kgR3JpbWJlcmcgPHNhZ2lA
Z3JpbWJlcmcubWU+Cj4gUmV2aWV3ZWQtYnk6IE1hcnRpbiBLLiBQZXRlcnNlbiA8bWFydGluLnBl
dGVyc2VuQG9yYWNsZS5jb20+Cj4gUmV2aWV3ZWQtYnk6IENocmlzdG9waCBIZWxsd2lnIDxoY2hA
bHN0LmRlPgo+IC0tLQo+CgpSZXZpZXdlZC1ieTrCoCBKYW1lcyBTbWFydCA8amFtZXMuc21hcnRA
YnJvYWRjb20uY29tPgoKLS0gamFtZXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1udm1lIG1haWxpbmcgbGlzdApsaW51eC1udm1lQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1udm1lCg==
