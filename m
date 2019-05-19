Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0102281A
	for <lists+linux-nvme@lfdr.de>; Sun, 19 May 2019 19:56:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pyh8AV7+kNBTFnN+unc7FN7WU39qG16pJ97YLFx+rmM=; b=Mz//z4zdQKdly2
	IPu08D79lJnH0Ds+PMd45M7fHahcaq5SK651PYdEsUM4rZncmFBiVwMQY1DXR67plCqzArrPt8bdE
	uVc9xEmMbmYMXRJ34HRG830N6mtzSDnq7nViFdTB5tnRuudgpHeJ8vP/xA0086RKlGqJDEBOHVUUF
	af3WvNbQdEkgp4ZVJOHu0blBOf7I7yqRDYE1AsK6+2tBgbapA2ZKZgICD5xuc1ZWw+WkSNyWSwezN
	vM3JgYPf7+y+D1NWgg9Jt5mxGyuQSKIUCTHTCV2VNbW5EMia9ZX3xWR1XeDpRAp9ttkL4nzgolnCS
	uMIsd5FX4JhExrHHAgIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSQ2e-0005jD-Ne; Sun, 19 May 2019 17:56:12 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSQ2a-0005ir-8T
 for linux-nvme@lists.infradead.org; Sun, 19 May 2019 17:56:09 +0000
Received: by mail-pf1-x444.google.com with SMTP id q17so6063163pfq.8
 for <linux-nvme@lists.infradead.org>; Sun, 19 May 2019 10:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4gohrqo3snVesqqK9FYN3tfzBk3BgKnOc9RXJs5UweY=;
 b=Rs6MZxnFryBnJDHsTNDQ7/OPI/jG2Dsn7AWFAIeg50Ef8R+ChGZw8dp/yBktHsaG8H
 bxksdK8bLQX4cs9MyXfTztp0tbZN7QXLYcxFeM/Km6doz4yxjA64IxxG9AecpkM191QZ
 pp19DpDLCj7I9YEvYkDldMpNDKqP0D8T5nLYaa8iO3BGkywWj68e0/6vnrxlSSlcruZn
 MkBP0502X8HDxfa/td+gHfveFP0FUn9SKAnawtDdTvD+0JG4PTLZ1m9NzFORcjFp94eE
 tEeaH+1/oKzNiRNU4yhxTvX6H36wqjEDpYdw5WHDLnqQ1oQkLBqeRPAyV9vsYdRgYn5A
 n0FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4gohrqo3snVesqqK9FYN3tfzBk3BgKnOc9RXJs5UweY=;
 b=JSS9vOxmfaVV3JidtH1Iks1fZg/RxABykvVLRAD11RjQ+Sj3f4TnzLZxMMKf8GWGQ2
 gka8jNDQmcV3kVo/umIT35mBaYur2bT3qPjHbiH9jrMT0GOZQh70e9XJ7DIS/hsDzqzg
 7E7L522K7aqAcGATm2BV1pF7F2nzTRPnAKkj+OAmHklgUeD9wzLqqBAgG2Dg1amR1BV2
 T1WEgGD7LHUu8DR/ssnUCANR7gfXcvFHFJVhhEQyz6cPZJWcnm1cyoh7S72GsjI1YNlo
 WDomiQgwPrSQuH3gYKOUZOVOzdT/wx43M9OSIk9XtkhKVR9G/kE/8Q5ztD8soSzxbYc7
 AaLw==
X-Gm-Message-State: APjAAAV42Pkq+D9K9ocbVTyXs2Hqr1wI0V2XScxrCn2NNHdTxys3XWs+
 8Dz7SVvo5XLXsveW1Hr+3so=
X-Google-Smtp-Source: APXvYqzLzWB8uX0hUjGzHnVucb1oNZKxrw0I3MxmB2eWve7hdQLjOD7hXqZIR1rcyU1PyUAyJeGG5w==
X-Received: by 2002:a63:6cc5:: with SMTP id h188mr9600704pgc.105.1558288567793; 
 Sun, 19 May 2019 10:56:07 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id n13sm19455460pgh.6.2019.05.19.10.56.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 19 May 2019 10:56:07 -0700 (PDT)
Date: Mon, 20 May 2019 02:56:03 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [PATCH V2 2/4] nvme-status: Introduce nvme status module to map
 errno
Message-ID: <20190519175602.GB10876@minwooim-desktop>
References: <20190513170342.9497-1-minwoo.im.dev@gmail.com>
 <20190513170342.9497-3-minwoo.im.dev@gmail.com>
 <BYAPR04MB5749007DAA9F804D6385FF8F86050@BYAPR04MB5749.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR04MB5749007DAA9F804D6385FF8F86050@BYAPR04MB5749.namprd04.prod.outlook.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_105608_302483_946B312E 
X-CRM114-Status: GOOD (  16.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-05-19 17:42:19, Chaitanya Kulkarni wrote:
> On 05/13/2019 10:04 AM, Minwoo Im wrote:
> > Background:
> >    It's not enough to return the nvme status value in main() because it's
> > allowed to be in 8bits, but nvme status is indicated in 16bits.  So we
> > has not been able to figure out what kind of nvme status has been
> > returned by return value.
> >
> >    This patch introduces nvme-status module that manages mapping between
> > nvme status and errno.  It's not possible to make 1:1 mapping relations,
> > but we can map it as a groups.
> >
> > All the internal errors which has been returned in a negative value will
> > be returned with ECOMM that indicates communication errors.  In this
> > case, we can see what happened via stderr.
> 
> I didn't understand this as I don't see ECOMM in this patch, also when 
> you mentioned internal errors are you referring to the  NVME_SC_INTERNAL 
> ? in that case in this patch NVME_SC_INTERNAL is mapped to the EIO. Can 
> you please explain ?

Nice catch, Thanks, really.  I didn't make ECOMM errno included to this
patchset.  NVME_SC_INTERNAL will be mapped to EIO to make it
distinguished from ECOMM which indicates the internal linux errno.  All
the error status from nvme except cases defined in the following
switch-case will be mapped to EIO.

Will make this patch return ECOMM in case of internal linux error which
will be given in a negative value with the previos commit.

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
