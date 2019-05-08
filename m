Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4FC173AE
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 10:27:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NDcZ6/Y1J7GAgeMPjMqNABZ1dckbtg6axUYsZ6NNqvg=; b=NhOZOHmhEUMpdh3Crf3TX/PVE
	z6eMsdCR5T0usbm9XUbgXRFxK9bry/fAsL/JFR0FYYFNJ7j74frxh9pgtHbu1F3gGwe2Ey2+VTLrj
	+5HhM/90o9ETwShL44TaL35MBhx3I1qye3ZWIpHiwNuK37G+aJAceoc3nA8tl4JbF6mLfUEZSRTLI
	yJ6EvZFDCaGuL14MRRFobDran56YzUImhoz9IKzBGddqrGYsSIH9km98YVOj8mknVqBEd5j/xyT1A
	BvOsxbU8QIXb6jEYTp4TYWy6+CXVOWBEDkjaUo2W4zKvk/a27FPmQR41Qk8EpzwCKyZfgvlqKXJ7C
	t9wmhqfAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOHus-0007hr-HR; Wed, 08 May 2019 08:27:06 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOHun-0007hT-JG
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 08:27:02 +0000
Received: by mail-io1-xd44.google.com with SMTP id z4so9791595iol.0
 for <linux-nvme@lists.infradead.org>; Wed, 08 May 2019 01:27:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=S33yWnIXI84JfQQ2o/cOoQr1awWuYHlPxCKjb8PCswk=;
 b=uuUbcwxYt+YowaYQ3GabwUR30aR2gH5uD8yXqRwLREbsDfNQuez+ohC/x/LZneFLmT
 U3j1oakYPTbAr2f8/WAlXD6FBPTeZtI5DzzZufxanzB6hxbiY+M9oy5oz8M6+HOzioVv
 DvGvqIGb4AjDCeFIz+JZLw1r2Q4mOO73ejs7JZJGiL2nNThxkWTC80oo4Z59MK9W4GL2
 +tpBuAMCnmW2c5QWULVmEyndoxqfHbD3FTgOSMmGIWTW2IJms/aL/0iYt2nG8aVX61Um
 9DVx7Ie7u4KAL6ePHNWLjmw1RgOOGOZ5e3kQpmHrhwCMAfM+pcrvjFYAaJP6Aovv+EAh
 JcNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=S33yWnIXI84JfQQ2o/cOoQr1awWuYHlPxCKjb8PCswk=;
 b=mE/Id6LkcT1jbm4o9IBXhf1zcidyKZYgbvvXAPjwT/CsVYS5LxAH6JknZvDHCPlJPc
 WmuNRhu5xMzRS5pie6fCQG/jrJko8b+PbqQfhJ3IotvVyd+ZHmpWifRjqRfRvXob20wk
 4jCfY41QiD4Z5Ac2LpJG7V4KVYqBCtXDJQpR652wMEXjKWzHu3YOBCQfnqUy32Fo6sy5
 OPuRSHGvC0Ns6TyaPxd+Dyevi7s9huCH5cTbIxwareOLK/LYfBMCCRAQeeFsMzv6WzI+
 dfRP8QT2uqj5S87RWHDeWl1fNTcAnFRRiBxzF/PNi4WaeRmF5d6bfazg97cWUQoFRyhO
 sRBA==
X-Gm-Message-State: APjAAAUR8lro4XdNXIJEBc/bVjqKZlJ3UQoAskroKL/Wb2KhYd84lQLD
 Gv6ZfeirWZlM9c/Zp9hhkMk=
X-Google-Smtp-Source: APXvYqxBUWrJHPTP6NF2uZrELS6ZSY2iiDRYdNNKQP2ob7RNpXMRe7eZyDrJisl+CmEBu41s8Cqd2Q==
X-Received: by 2002:a5d:8156:: with SMTP id f22mr5416750ioo.260.1557304020293; 
 Wed, 08 May 2019 01:27:00 -0700 (PDT)
Received: from [192.168.0.6] ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id p184sm860909itb.2.2019.05.08.01.26.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 01:26:59 -0700 (PDT)
Subject: Re: [PATCH V2 2/2] nvme-trace: Add support to trace fabrics command
To: Christoph Hellwig <hch@lst.de>
References: <20190506194644.11109-1-minwoo.im.dev@gmail.com>
 <20190506194644.11109-3-minwoo.im.dev@gmail.com>
 <20190508072531.GD21823@lst.de>
From: Minwoo Im <minwoo.im.dev@gmail.com>
Message-ID: <47dbbe1d-0f47-1197-17dd-16553ba645a4@gmail.com>
Date: Wed, 8 May 2019 17:26:55 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190508072531.GD21823@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_012701_636237_EB77DFF5 
X-CRM114-Status: GOOD (  17.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im@samsung.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/8/19 4:25 PM, Christoph Hellwig wrote:
>> +	if (likely(!nvme_is_fabrics(cmd)))
>> +		trace_nvme_setup_cmd(req, cmd);
>> +	else
>> +		trace_nvme_setup_fabrics_cmd(req, cmd);
>> +
> 
> I wonder if we really need this.  My idea would have been to just
> branch out to the fabrics command parser from parse_nvme_cmd().  Or did
> I miss something why that might not work?

You didn't miss anything.  I was trying to separate fabrics commands out 
of it because they have a little bit different "common" SQE fields than 
the existing one.  That's why I made it separated.

If you want parse_nvme_cmd() branch out to something like 
nvme_parse_fabrics_cmd(), it would be easier to go.  Actually that was 
my second try, but I thought people wanted to show the exact fields for 
fabrics commands in traces.

Anyway, If it's okay to go with common fields in common, and from the 
cdw10 position, I'l prepare a V3 patch.

> The benefit is that we don't have an additional branch in the
> non-tracing fast path (and also make it look a little nicer).

100% agreed.  As Chaitanya was worried about this part, I'm now also.

>> +#define show_fabric_type_name(type)					\
>> +	show_nvm_fabrics_type_name(type)
> 
> Why do we need this #define to the same name/signature?

Oh, I was just trying to form it like existing one.  I was referring 
show_opcode_name(), but, That just needs to branch out by a given "qid".

This #define has no need to define like this. Thanks for your review.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
