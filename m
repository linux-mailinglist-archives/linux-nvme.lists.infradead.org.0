Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF7EDE1F8
	for <lists+linux-nvme@lfdr.de>; Mon, 21 Oct 2019 04:14:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WOT6A8YqrK+x1577Ti50bUWbeGIsAwnW77QsIMkL6xU=; b=FiuJ6ALKBRvliK9YeC2pr6UF5I
	tE1dbxUNChQWEW85NkTs0SMv1OtuPZPrW4kkxePXLr5IuoSwkfI8bghVU4rnFt64+RgnMwKGjL9Vg
	1s4lABwrXT7AjA8SSTgYt51OjaKdNuzFOrU8WXapwHflGRp2uRzH4ZDuP1SKykpbF5OFwVCD5qAbw
	qUjzCNoXvovxGaIFrg6uhwA2CONvyIkUNZagbXlQ1guR/LHF6Zqt74cHbYQVSQt5eMwb/ADb3DlY2
	4DiLqnW/WGu1hiCf/FobOn2qbyjyKuNJz6CIG/kSsSW2FCMXpwric7V19CnoprwuNbx6fm0TZLwK5
	MQq1pwCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMNCv-0000QJ-4r; Mon, 21 Oct 2019 02:14:05 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMNCq-0000Ot-2w
 for linux-nvme@lists.infradead.org; Mon, 21 Oct 2019 02:14:02 +0000
Received: by mail-pf1-f196.google.com with SMTP id 205so7399255pfw.2
 for <linux-nvme@lists.infradead.org>; Sun, 20 Oct 2019 19:13:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=OxsEvWtsrV0kpZL/JGbC5sHeGTodO968ByDmkrAGEHQ=;
 b=id0u4b1Vg92wT81b46QmdFDxvONUdrXXUAVOtdeW4gBbziilyAvVZvCG79s/jHIp/B
 DaO9aypf6Ai0WQNIDFSH0lInhVjeEoPgezdHAA379r49HvfR3JzOMnwj8OCmPmsZ3yQ2
 Rl062f0OQdqhFvTPlAbHXWraRh2GyBbTZao83VQSBeFBGVNuSH7iSKTTK7CywaaLjIwZ
 ZbT/G/YJMue4ASiHQ6x0HMrZ5VSm8SwYStibSg2ud/LjA2vlBdf6rFJvMZ2NzYAjLdHd
 I8Xwu5q+lPscAjTnszpim57zTope+i3as8tzUxWWfo5VUGJDMhYFOvTj9fEQXn54oXEh
 DJFw==
X-Gm-Message-State: APjAAAWU/IcEuY0tHLXSaR0dLaZpN1dVGl/ZioYLJNdh9NzGRl6TRN49
 c5E/LKbuGUMxHGHshf3ghUM=
X-Google-Smtp-Source: APXvYqytUpEHj+nrSKjVXvgC5oIg6M8crN5THXkx2pkXdldckeQTUZoimsY/ABPrxLDVm4b/7J9eVg==
X-Received: by 2002:aa7:9a0c:: with SMTP id w12mr19862556pfj.81.1571624037167; 
 Sun, 20 Oct 2019 19:13:57 -0700 (PDT)
Received: from localhost.localdomain ([2601:647:4000:ce:256c:d417:b24b:327f])
 by smtp.gmail.com with ESMTPSA id
 2sm15883770pfa.43.2019.10.20.19.13.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 20 Oct 2019 19:13:56 -0700 (PDT)
Subject: Re: [PATCH 1/2] nvme: Cleanup nvme_block_nr()
To: Damien Le Moal <damien.lemoal@wdc.com>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>, Keith Busch <kbusch@kernel.org>,
 Sagi Grimberg <sagi@grimberg.me>, linux-block@vger.kernel.org,
 Jens Axboe <axboe@kernel.dk>
References: <20191020234220.14888-1-damien.lemoal@wdc.com>
 <20191020234220.14888-2-damien.lemoal@wdc.com>
From: Bart Van Assche <bvanassche@acm.org>
Autocrypt: addr=bvanassche@acm.org; prefer-encrypt=mutual; keydata=
 mQENBFSOu4oBCADcRWxVUvkkvRmmwTwIjIJvZOu6wNm+dz5AF4z0FHW2KNZL3oheO3P8UZWr
 LQOrCfRcK8e/sIs2Y2D3Lg/SL7qqbMehGEYcJptu6mKkywBfoYbtBkVoJ/jQsi2H0vBiiCOy
 fmxMHIPcYxaJdXxrOG2UO4B60Y/BzE6OrPDT44w4cZA9DH5xialliWU447Bts8TJNa3lZKS1
 AvW1ZklbvJfAJJAwzDih35LxU2fcWbmhPa7EO2DCv/LM1B10GBB/oQB5kvlq4aA2PSIWkqz4
 3SI5kCPSsygD6wKnbRsvNn2mIACva6VHdm62A7xel5dJRfpQjXj2snd1F/YNoNc66UUTABEB
 AAG0JEJhcnQgVmFuIEFzc2NoZSA8YnZhbmFzc2NoZUBhY20ub3JnPokBOQQTAQIAIwUCVI67
 igIbAwcLCQgHAwIBBhUIAgkKCwQWAgMBAh4BAheAAAoJEHFcPTXFzhAJ8QkH/1AdXblKL65M
 Y1Zk1bYKnkAb4a98LxCPm/pJBilvci6boefwlBDZ2NZuuYWYgyrehMB5H+q+Kq4P0IBbTqTa
 jTPAANn62A6jwJ0FnCn6YaM9TZQjM1F7LoDX3v+oAkaoXuq0dQ4hnxQNu792bi6QyVdZUvKc
 macVFVgfK9n04mL7RzjO3f+X4midKt/s+G+IPr4DGlrq+WH27eDbpUR3aYRk8EgbgGKvQFdD
 CEBFJi+5ZKOArmJVBSk21RHDpqyz6Vit3rjep7c1SN8s7NhVi9cjkKmMDM7KYhXkWc10lKx2
 RTkFI30rkDm4U+JpdAd2+tP3tjGf9AyGGinpzE2XY1K5AQ0EVI67igEIAKiSyd0nECrgz+H5
 PcFDGYQpGDMTl8MOPCKw/F3diXPuj2eql4xSbAdbUCJzk2ETif5s3twT2ER8cUTEVOaCEUY3
 eOiaFgQ+nGLx4BXqqGewikPJCe+UBjFnH1m2/IFn4T9jPZkV8xlkKmDUqMK5EV9n3eQLkn5g
 lco+FepTtmbkSCCjd91EfThVbNYpVQ5ZjdBCXN66CKyJDMJ85HVr5rmXG/nqriTh6cv1l1Js
 T7AFvvPjUPknS6d+BETMhTkbGzoyS+sywEsQAgA+BMCxBH4LvUmHYhpS+W6CiZ3ZMxjO8Hgc
 ++w1mLeRUvda3i4/U8wDT3SWuHcB3DWlcppECLkAEQEAAYkBHwQYAQIACQUCVI67igIbDAAK
 CRBxXD01xc4QCZ4dB/0QrnEasxjM0PGeXK5hcZMT9Eo998alUfn5XU0RQDYdwp6/kMEXMdmT
 oH0F0xB3SQ8WVSXA9rrc4EBvZruWQ+5/zjVrhhfUAx12CzL4oQ9Ro2k45daYaonKTANYG22y
 //x8dLe2Fv1By4SKGhmzwH87uXxbTJAUxiWIi1np0z3/RDnoVyfmfbbL1DY7zf2hYXLLzsJR
 mSsED/1nlJ9Oq5fALdNEPgDyPUerqHxcmIub+pF0AzJoYHK5punqpqfGmqPbjxrJLPJfHVKy
 goMj5DlBMoYqEgpbwdUYkH6QdizJJCur4icy8GUNbisFYABeoJ91pnD4IGei3MTdvINSZI5e
Message-ID: <0be8a36e-ee0b-0378-799b-a9ec2f1bad0c@acm.org>
Date: Sun, 20 Oct 2019 19:13:55 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191020234220.14888-2-damien.lemoal@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_191400_132762_C370644D 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 2019-10-20 16:42, Damien Le Moal wrote:
> Use SECTOR_SHIFT instead of its hard coded value 9. Also add a comment
> to decribe this helper.
> 
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  drivers/nvme/host/nvme.h | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index 22e8401352c2..a979b62ea4b2 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -419,9 +419,12 @@ static inline int nvme_reset_subsystem(struct nvme_ctrl *ctrl)
>  	return ctrl->ops->reg_write32(ctrl, NVME_REG_NSSR, 0x4E564D65);
>  }
>  
> +/*
> + * Convert a 512B sector number to a block number.
> + */
>  static inline u64 nvme_block_nr(struct nvme_ns *ns, sector_t sector)
>  {
> -	return (sector >> (ns->lba_shift - 9));
> +	return sector >> (ns->lba_shift - SECTOR_SHIFT);
>  }

Has it been considered to rename nvme_block_nr() into
nvme_sect_to_lba()? I think the latter name is more clear.

Thanks,

Bart.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
