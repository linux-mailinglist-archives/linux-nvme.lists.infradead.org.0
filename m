Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DB43191D
	for <lists+linux-nvme@lfdr.de>; Sat,  1 Jun 2019 04:45:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9WsNqtvIy9w5gcGCGEcRiu4P8WYqKu3CQ8d/lVVn9qU=; b=AeRkpoSwxeNL5v
	0HCg8q3t4Aa1r9H2LclsXtqcC9pdCVrQic2wX2cXqUUI2d9Ojnq4Y4UfOuCwDChtyfbYLbuOJa/ct
	MhxkwppSMWI1E9udapusP/i+Z1f7PZeAMFSG5TIvNi8MPnRctkf38rdKIg1hS8Qt4pZ8lfjX+qrZk
	6vbwviGXO20Os6vusGcTwO1iQ7gNWb5sKfgifuJbm0vvGFr8yVS19hn6frNKmu1PGk2eVdywX3dZV
	H6cv4mUCrM2oZpJDQyNr288fYUjjmvC8Sc/q7DsvHDTiTVbJVoaQyf43LrNLsTBCuyLqknRL7HLka
	va+l6wURAEn0NNo/OCoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWu1Z-0006LI-Bl; Sat, 01 Jun 2019 02:45:37 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWu1U-0006Kq-1a
 for linux-nvme@lists.infradead.org; Sat, 01 Jun 2019 02:45:33 +0000
Received: by mail-pg1-x541.google.com with SMTP id n2so5026394pgp.11
 for <linux-nvme@lists.infradead.org>; Fri, 31 May 2019 19:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XP66PE8yXM1OLIC2egUmqbAXq+LKz/a8KBA1mm6fKbM=;
 b=jXyWYrgeUg/YF0i8iXJeBFkPr1J4uzCJB7sHkDaEvN2WEtudWez6OdZCMR/ywILsdw
 w648Ff5e1JUb5BnzryB/u5C8Law6b6Zm1lPHweAutfZsGpo+oZzBQOc6O8SL/nyXrSMT
 njna3oIq2VG4eCx9uWrxtl/G6i9NxeiCZP5u0pV3POWyVjbvvtte9fmkILF3WmLJJMFQ
 Oh9uIYV2H9pWO19iPc/vFCg6jPTmb0XQnWeo+uyFutX295sI7PIGxMsVMvAwB/t3sa58
 F8VlcAgaqQReqAXzDVuIlum2POgx6ROVKbwGxrXIWL0PzNQDXbj1V1h7kAlBebnrcyPp
 GR1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XP66PE8yXM1OLIC2egUmqbAXq+LKz/a8KBA1mm6fKbM=;
 b=iYH6C66zn1EHBHENa1P5BQJ9goyEZE+F1jET1TZSPXIkBVni6vDVb+od45b1fPqadU
 li6L3cnf8r07v2piVgj42tDZHm30sEYwmrvqeZxJ6Xb5zN8QpTg5dqjvEqBnYheUjCpv
 p9EC/O/Xo8FmfWf5VptpZ69KyG4Wdo3koAVSHr6RUd/uoehBoFdDlGCjnMyLSvrBoTok
 UXJkML9Swq240B66Bcb58Ij899ytUwuWnlpQFCzqclGkbCmWfTVnM0a7RZH1M/W10xYR
 kuINegbY964sM4rysNMBFFJmFAxzbsZSTpXw/JDApN965tjiJlmkOHch6DIwaXvqD0iq
 t1ag==
X-Gm-Message-State: APjAAAXzzXVAGoWR8RRy6oPBnFGiIioMY1D97uZJ42U1U8GYjy2NIY8k
 lIajnYdWfw7e9Afz20VBezM=
X-Google-Smtp-Source: APXvYqwN/Y26BquChBMULTilfQ0oxuWBLlDuL2CfGf4ZcBIyw30EiI/NB1mVRkml0I0Mxa2bg5CmbA==
X-Received: by 2002:a17:90a:e17:: with SMTP id
 v23mr12946498pje.139.1559357130600; 
 Fri, 31 May 2019 19:45:30 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id d35sm5828903pgb.55.2019.05.31.19.45.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 31 May 2019 19:45:29 -0700 (PDT)
Date: Sat, 1 Jun 2019 11:45:27 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 0/3] nvme: Improve processing paused support
Message-ID: <20190601024525.GB3349@minwooim-desktop>
References: <20190524202036.17265-1-keith.busch@intel.com>
 <76f0ba18-fb80-7a96-6f53-d4df1d637da5@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <76f0ba18-fb80-7a96-6f53-d4df1d637da5@grimberg.me>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_194532_088419_9EE58A80 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Bart Van Assche <bvanassche@acm.org>, linux-nvme@lists.infradead.org,
 Ming Lei <ming.lei@redhat.com>, Keith Busch <keith.busch@intel.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-05-31 16:32:24, Sagi Grimberg wrote:
> This looks sensible to me,
> 
> Minwoo, do you have any concerns or feedback? If not
> can I get your review tag?

Actually this series are looking good to me.  But, I was just
concerning that if there is better print statement or safe access method
for CSTS.PP bit in the code.

But, the print message is not that critical so that I can make my review
on this.  I need to ask Keith about accessing CSTS.PP without seeing
CC.EN can be valid in some cases, by the way :).

For this series:

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
