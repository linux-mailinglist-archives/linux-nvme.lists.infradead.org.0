Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F36518919A
	for <lists+linux-nvme@lfdr.de>; Tue, 17 Mar 2020 23:50:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xxi6C4dvOPCoShI3U+uqB84wGtkQ4VkpO5lrhrUEY7w=; b=RZEmryd4uILaCS
	s7fqHyTZOIzoMC2rFxFfpA/PNdMq9LCR87UQ7Hnd44x53/OqJf8tP4fssV5nIZE8V5UauriZDeEIt
	4xj259yzAWbsEL9/FqyTUnBU5izaWmtln+wRIdjUQmmR2vOepWQd4aZu5+Z1u6sVRslATIvIPPBw0
	uEHD9bxCtMla/K0kniVhHcwhe731Kp/nljWE87RtYqejHd1DYyNVyTB4vYaNB3oT0kAOuLsV7EnvV
	ADjAZcwQdgQ3YgZj96dj3qEyBg6L3d66Nz+FGdRfXoiPc/3sbPsq3U4gXx064tJSQ4/ALPg2BC7S9
	S5LkClBpJdIy1J37n5RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEL2K-0006qi-L2; Tue, 17 Mar 2020 22:50:12 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEL2F-0006OR-88
 for linux-nvme@lists.infradead.org; Tue, 17 Mar 2020 22:50:08 +0000
Received: by mail-pg1-f196.google.com with SMTP id m5so12540586pgg.0
 for <linux-nvme@lists.infradead.org>; Tue, 17 Mar 2020 15:50:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=5hBg2UInqixDNtz8m0CWKvWrEprkNxjnjLnmqE6peRY=;
 b=cgFveGKvbXszb3PDRPq/T0yf78KfYuGsB3EGleLr34erhw9wtvkCFq+NpXNYnvc/1s
 0ZrlgSBhS6pQZdr5/2d+MElsfxAUS0IO4MnwIci4j/K2EJ9pqc2zEVDDOuUQH9eC90O3
 7T3ELmpfVZ2rM3xLukmaCQIkSK6/wWmtvna1lbffKM3ZV3C/V9RCY6x5Z+flQ+d2eyM2
 /cdgIzJA0R4jbZcNCs8tR+qYjImC6BqNmYO6dJ3k4u0csNd1uiXrZz2w+GTaKe2ilaWN
 95FH3XYigXqyN12DgK1OAOM8inL4ouzPFh6z0XNgXGo9USi+9rscDHckyX5oIJmdejkM
 mPvA==
X-Gm-Message-State: ANhLgQ16flRFMM4jJ/nPAKFlGyQr4T7LG7nlN1RtJ93B26E4E3dYXzbT
 z4w/cUWBRdD44A82vj3ziBo=
X-Google-Smtp-Source: ADFU+vsYTjDoZEcwmb5AYdgQkBYd0HDAqlu60fFz42fJwFGtgidjsPtmvvKSHiGbbiMTZfNQxSijYw==
X-Received: by 2002:a63:ec50:: with SMTP id r16mr1568610pgj.274.1584485406022; 
 Tue, 17 Mar 2020 15:50:06 -0700 (PDT)
Received: from ?IPv6:2601:647:4000:d7:a8f7:65f:9d45:d2f4?
 ([2601:647:4000:d7:a8f7:65f:9d45:d2f4])
 by smtp.gmail.com with ESMTPSA id 64sm4266798pfd.48.2020.03.17.15.50.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Mar 2020 15:50:04 -0700 (PDT)
Subject: Re: [PATCH 4/5] IB/core: cache the CQ completion vector
To: Max Gurtovoy <maxg@mellanox.com>, Chuck Lever <chucklever@gmail.com>
References: <20200317134030.152833-1-maxg@mellanox.com>
 <20200317134030.152833-5-maxg@mellanox.com>
 <448195E1-CE26-4658-8106-91BAFF115853@gmail.com>
 <078fd456-b1bc-a103-070b-d1a8ea6bff9c@mellanox.com>
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
Message-ID: <caa4b25d-c669-8a3f-e4d1-88f8d3a4f345@acm.org>
Date: Tue, 17 Mar 2020 15:50:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <078fd456-b1bc-a103-070b-d1a8ea6bff9c@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_155007_300323_D5B6CAAC 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bart.vanassche[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: loberman@redhat.com, sagi@grimberg.me, vladimirk@mellanox.com,
 idanb@mellanox.com, linux-rdma@vger.kernel.org, shlomin@mellanox.com,
 linux-nvme@lists.infradead.org, leonro@mellanox.com, dledford@redhat.com,
 jgg@mellanox.com, Oren Duer <oren@mellanox.com>, kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 2020-03-17 08:41, Max Gurtovoy wrote:
> On 3/17/2020 5:19 PM, Chuck Lever wrote:
>> If you want to guarantee that there is an SRQ for each comp_vector and a
>> comp_vector for each SRQ, stick with a CQ allocation API that enables
>> explicit selection of the comp_vector value, and cache that value in the
>> caller, not in the core data structures.
> 
> I'm Ok with that as well. This is exactly what we do in the nvmf/rdma
> but I wanted to stick also with the SRP target approach.
> 
> Any objection to remove the call for ib_alloc_cq_any() from ib_srpt and
> use ib_alloc_cq() ?
Hi Max,

Wasn't that call introduced by Chuck (see also commit 20cf4e026730
("rdma: Enable ib_alloc_cq to spread work over a device's comp_vectors")
# v5.4)? Anyway, I'm fine with the proposed change.

Thanks,

Bart.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
