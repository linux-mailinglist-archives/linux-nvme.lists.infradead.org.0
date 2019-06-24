Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 721C651A57
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 20:16:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0V1Kd+mb01qQoOQcCtPnV1am5+ruv9noDRIusz3lBzg=; b=inl3Hcxkq5EyQs
	rkJe6jLXffY/hsQj1u+h6wRs/oz66Y+wH3rj9BdRxfubXDOAtvxLnO7WUdZCsfdYxClTVck0m64om
	3aoSubz7VTaXkTHhEcU9K4hPYVq5sryf/VxXgu/3jtkpKyAuGaxWWFa6r/4iCnU2/ng+yfH8BNdwm
	66tQKmEm0c/FXFjbB7YhacUFGDMjGyGsjIH8nz74utCSPjaV136KdKIGWy3KLvKFXDUjukA36lrHN
	8/jbHetA++juj5TJuexvhRMmCOPRJ7hK7NXVw7rUa0Sofx7tlpLp2aCHqmMjy4zAuA/xAVsgiWHEf
	h3HcSmRLCAjhP8retMCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfTWG-0004xL-B8; Mon, 24 Jun 2019 18:16:44 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfTW9-0004wj-6s
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 18:16:38 +0000
Received: by mail-wr1-x441.google.com with SMTP id r16so14896490wrl.11
 for <linux-nvme@lists.infradead.org>; Mon, 24 Jun 2019 11:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sJIsqOQ5eFDre2y4pDDL9/K7QpUmlmCNTD0di87N8/o=;
 b=glv0HRf2INHgoAzbU/KeaJR4l18uUuvmI/14yZG/YlQGVkZoefkf69d99mboSmSYJ3
 kUBmB3L6FHXultbhK/4JvJG5Fc1At0jKRBNni1ZrG65adIRqsOjNaABP4HA2RPqrrhc2
 vVNNd4SHFHbQJJTBSNvHIU34Cvn9PJoo9LNVbgrEEBfVdZnp3c4Bbh4CD5UlBYjP6Uwd
 WUft3HnKCm7fEh4o3QlUJrZ3p/cvjIZORsN9pnvYWJSlOVaEBZV4QIwwqrE9sSpFbWwq
 AgrKHsm2As5TJOfi2TNk7z/7mjjHrOpgpz4TRa/jfa+zOe2of3u4wRDAyHxYLZHZgkd6
 aeqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sJIsqOQ5eFDre2y4pDDL9/K7QpUmlmCNTD0di87N8/o=;
 b=RPe6emm/IUQxyQlupapyfODisft84fQ97HPLuQsunoRsFawlvem0t72DcPYKfzlWJT
 5AtQ3fb/K3OH2XBYiKIJGL63zwj4L1Sg6mpgOCu4prQlfOMJQ5PF7K8Q8XKauU92lmfk
 mBxOqLXrWUE9Kg42AcxLzPexAdplFS18LEtqzQMx8NogjWsnp2aVOcLLJSHapaYUnSUV
 0S/bh830m4LrvQKwVbi0Clkm2F2Ewn6ND06A2YdjLhunCCgs6MOEBkcY5TNmIbv6bM1E
 zYU8nh5w5na5FfzTn92tpFQGjNtDYLG+PYMgnpcOyS1KRsg2UW+MJ/bVugVpkKR52VRC
 Qepw==
X-Gm-Message-State: APjAAAUUpHZWi6f9dHH+Uwuo7dT7DyXQioXhqfOFLBt9oPZwtbQ+T8Zr
 yk4pWLEowKLuFg50TUgvl/2Nog==
X-Google-Smtp-Source: APXvYqzN+tsY00ZZUnDzGCCozz2kltRbszB8xG0KA0aMF1Z60uBAcs4mW0rG08os3rQlgEHkHPz+Hg==
X-Received: by 2002:adf:ea45:: with SMTP id j5mr17926712wrn.281.1561400195211; 
 Mon, 24 Jun 2019 11:16:35 -0700 (PDT)
Received: from ziepe.ca ([66.187.232.66])
 by smtp.gmail.com with ESMTPSA id j7sm16315095wru.54.2019.06.24.11.16.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Jun 2019 11:16:34 -0700 (PDT)
Received: from jgg by jggl.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hfTW4-0006E8-3Z; Mon, 24 Jun 2019 15:16:32 -0300
Date: Mon, 24 Jun 2019 15:16:32 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
Message-ID: <20190624181632.GC8268@ziepe.ca>
References: <20190620161240.22738-1-logang@deltatee.com>
 <CAPcyv4ijztOK1FUjLuFing7ps4LOHt=6z=eO=98HHWauHA+yog@mail.gmail.com>
 <20190620193353.GF19891@ziepe.ca> <20190624073126.GB3954@lst.de>
 <20190624134641.GA8268@ziepe.ca> <20190624135024.GA11248@lst.de>
 <20190624135550.GB8268@ziepe.ca>
 <7210ba39-c923-79ca-57bb-7cf9afe21d54@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7210ba39-c923-79ca-57bb-7cf9afe21d54@deltatee.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_111637_331630_81D0C10C 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 linux-rdma <linux-rdma@vger.kernel.org>, linux-pci@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Keith Busch <kbusch@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 10:53:38AM -0600, Logan Gunthorpe wrote:
> > It is only a very narrow case where you can take shortcuts with
> > dma_addr_t, and I don't think shortcuts like are are appropriate for
> > the mainline kernel..
> 
> I don't think it's that narrow and it opens up a lot of avenues for
> system design that people are wanting to go. If your high speed data
> path can avoid the root complex and CPU, you can design a system which a
> much smaller CPU and fewer lanes directed at the CPU.

I mean the shortcut that something generates dma_addr_t for Device A
and then passes it to Device B - that is too hacky for mainline.

Sounded like this series does generate the dma_addr for the correct
device..

Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
