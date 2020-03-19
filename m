Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4030E18ABB3
	for <lists+linux-nvme@lfdr.de>; Thu, 19 Mar 2020 05:20:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jMvIQjOZt0vGu6YPjxl2mrutx3+9jl2t8kQ/snFLyf0=; b=W0Z2SJa3Eyyk7Y
	ZjDvRMbo4OZzw6FA1KPQxsqLAaFSNA5xfb/N5sExTrwkmwasJDLPVqzH8PPZCPE0ek3I21EBRNEwb
	NdENlE7MpD/HZ+K3Sgycn9ElU+7YKBxP9x/uUiHaJNEqKU++cD6H/7BwSkVMBuKnFhG/3CgfyXTEX
	H/rPvDO3e5V6sbKeKhOeoN9irXhyJyjQ3WQ1QaAAjiQD2+cEj2qKneWHrm9gwr9C4dHqJMF+9AONf
	OgDRcHIt/XPsHyNxQTJmLsrepcHnY2RPTvn8CvQnWYMlCET4jvMsoRzi+bFwXofFWBLq/jDfr45Ev
	RXnVmNuCYkrUQXrGmDlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEmfh-0002A3-CO; Thu, 19 Mar 2020 04:20:41 +0000
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEmfc-00029a-Cd
 for linux-nvme@lists.infradead.org; Thu, 19 Mar 2020 04:20:37 +0000
Received: by mail-pg1-f193.google.com with SMTP id t3so536741pgn.1
 for <linux-nvme@lists.infradead.org>; Wed, 18 Mar 2020 21:20:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=l5XhcxCMQg8oTVpOAkuu6Pgu0Fm+gg1zDu8gyd3uVj0=;
 b=r6heScQ6W/RwrWHKxllQ01B7uJBuqRkfMqw4vz3PMieY8QOVxZCheyk3KtVQ2SvpwZ
 fRqI1KDOpmTZYIttF8wskWf1sfCAlKKW3hVCVXcZ7exIX5OBv+gQiABAt8KK6y8S99iw
 xT0t7m3ZMdIMUvsQk5d4xSXq7unjnzS7/5zs1fMurU7tTekuj5gRx+SMGw3v9L8CPQns
 JZNuA70VxuBSo8cKwF03jUFTHemFVvJFaIx7JkFr9jKQvUlUZciXgQLm8kWnzf9EPXFb
 dTMpM/NP7UbFaGNZIPAqS2+rHw3PDKrj5GdUBm+QHbnM6rSW9tl0ctjl6T95HgaAZyut
 vO5w==
X-Gm-Message-State: ANhLgQ11y9mGMoRIxe3xiNLqI/bjbaCbVZ1ykeDXw6SZeBUw0shvw4HC
 U0KuzleNLCpQFbR8d+/m3ls=
X-Google-Smtp-Source: ADFU+vs9BT5h8/ILGqDxzYrVa0LtIW7S1biNtmQvN6npeW3BDjdAKtZSHe7W+kovGHY49Ll2P5tiNw==
X-Received: by 2002:a63:5c18:: with SMTP id q24mr1346808pgb.322.1584591635271; 
 Wed, 18 Mar 2020 21:20:35 -0700 (PDT)
Received: from ?IPv6:2601:647:4000:d7:84b7:c685:175f:6f9b?
 ([2601:647:4000:d7:84b7:c685:175f:6f9b])
 by smtp.gmail.com with ESMTPSA id g81sm511355pfb.188.2020.03.18.21.20.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Mar 2020 21:20:34 -0700 (PDT)
Subject: Re: [PATCH v2 5/5] RDMA/srpt: use SRQ per completion vector
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 sagi@grimberg.me, hch@lst.de, loberman@redhat.com, linux-rdma@vger.kernel.org
References: <20200318150257.198402-1-maxg@mellanox.com>
 <20200318150257.198402-6-maxg@mellanox.com>
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
Message-ID: <27e2267c-6793-c7dd-1e06-3f12acf08078@acm.org>
Date: Wed, 18 Mar 2020 21:20:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200318150257.198402-6-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_212036_430655_DAE91AC6 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bart.vanassche[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
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
Cc: rgirase@redhat.com, vladimirk@mellanox.com, shlomin@mellanox.com,
 leonro@mellanox.com, dledford@redhat.com, jgg@mellanox.com, oren@mellanox.com,
 kbusch@kernel.org, idanb@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 2020-03-18 08:02, Max Gurtovoy wrote:
> +	for (i = 0; i < sdev->srq_size; ++i) {
> +		INIT_LIST_HEAD(&srq->ioctx_ring[i]->wait_list);
> +		srpt_srq_post_recv(srq, srq->ioctx_ring[i]);
> +	}

Please check the srpt_srq_post_recv() return value.

Thanks,

Bart.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
