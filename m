Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC801798C
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 14:39:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oH7SKr16KEHeFlzwH8+qrNF5CcEHE0VyPNqUWdeetW8=; b=jUy6Nz6t09OW1K
	V6eMRheqgeQl0EwOvb/5cFxUyGPcICDGJoALZWqCB1FfSPEcdmJ2Ox1LzxdRKRUmzGNWcLA335bQD
	QG2/xlEA+kLDJyziLtdAM2zMo66Vyi5qoHEY4hj+l7KlKxmOx1xehNJIDQTa4cfPgXqqMRDkRHf2g
	57Blt/GrK0G8aqrjYoO7TO3C11YTg4d6mCYlbPlH3RsqKt8/J+hS/9oTrmMXQgeueBMuIIHQt6wRu
	L7UVrGGmmSJPzDG8ydyVeZkjeZyk3fiuzVnMNuJcBRnYuIY8deZsvNSok76JXJTZIeoj5moHrrkxo
	8EbxYBDkLm5vsm1e1H4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOLr6-0007fN-Py; Wed, 08 May 2019 12:39:28 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOLr0-0007eL-7f
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 12:39:23 +0000
Received: by mail-wr1-f68.google.com with SMTP id d12so6542743wrm.8
 for <linux-nvme@lists.infradead.org>; Wed, 08 May 2019 05:39:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4Rmas8gcFMGufmlR3c5DQmI8ZQrCroMRQQbwgTv6K0o=;
 b=DEeY0xuwrfP8miyEVSP8qDE3oBmho3KlY7G42mu8Cpd/ftB/0J5OVJMop5S34XqPNi
 Am+TKb5uVgLX4Rj3rDYH3xocTN+kfBAswy99o6RtEYaAeLI20utlAtvO/FBvwHGM5RCQ
 5dO9dDzDXwEAvGX55vauouy+S037nXuPO3jlxw5NmXC5yCYSz76m47DyvbebqF0QxcYS
 IqL1ewqOB2hcXDG3zVg3nDHbFuE1j7qea6h5Uj+GgRauV1RjQiBZiNQMMQR33odKay9d
 DUq5BhQZM2Uux3ghOQHa1FdStfHRQ/C3udbLMle8JPrVqN9sCe8qr8hjQaVC7eVGhrf0
 98UA==
X-Gm-Message-State: APjAAAUlFPkUbDeRco2JoBJtJnS+TJ7lAtx2oK3sNF1AGDacBwuSL6yD
 Y+laQYcXljTYJ85vKvbhPEZ91Q==
X-Google-Smtp-Source: APXvYqwuyoFh7G+bUNBJPQbUYqVHJhmvLVup6b4hVfQDP/ku/Jv9N/UUoJIUxNspRHbGoU418ffKdw==
X-Received: by 2002:adf:dc8a:: with SMTP id r10mr10988770wrj.15.1557319160335; 
 Wed, 08 May 2019 05:39:20 -0700 (PDT)
Received: from [10.201.49.229] (nat-pool-mxp-u.redhat.com. [149.6.153.187])
 by smtp.gmail.com with ESMTPSA id a9sm2110131wmm.48.2019.05.08.05.39.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 05:39:19 -0700 (PDT)
Subject: Re: [PATCH v2 00/10] RFC: NVME MDEV
To: Christoph Hellwig <hch@lst.de>, Maxim Levitsky <mlevitsk@redhat.com>
References: <20190502114801.23116-1-mlevitsk@redhat.com>
 <20190503121838.GA21041@lst.de>
 <e8f6981863bdbba89adcba1c430083e68546ac1a.camel@redhat.com>
 <20190506125752.GA5288@lst.de>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <a789d935-e665-c339-d7ae-3d23997b92d9@redhat.com>
Date: Wed, 8 May 2019 14:39:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190506125752.GA5288@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_053922_275573_2AF7465C 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Fam Zheng <fam@euphon.net>, Jens Axboe <axboe@fb.com>,
 Sagi Grimberg <sagi@grimberg.me>, kvm@vger.kernel.org,
 Wolfram Sang <wsa@the-dreams.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Liang Cunming <cunming.liang@intel.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org, Keith Busch <keith.busch@intel.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Kirti Wankhede <kwankhede@nvidia.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 John Ferlan <jferlan@redhat.com>, Liu Changpeng <changpeng.liu@intel.com>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>, Amnon Ilan <ailan@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 06/05/19 07:57, Christoph Hellwig wrote:
> 
> Or to put it into another way:  unless your paravirt interface requires
> zero specific changes to the core nvme code it is not acceptable at all.

I'm not sure it's possible to attain that goal, however I agree that
putting the control plane in the kernel is probably not a good idea, so
the vhost model is better than mdev for this usecase.

In addition, unless it is possible for the driver to pass the queue
directly to the guests, there probably isn't much advantage in putting
the driver in the kernel at all.  Maxim, do you have numbers for 1) QEMU
with aio 2) QEMU with VFIO-based userspace nvme driver 3) nvme-mdev?

Paolo

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
