Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC35811C96C
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Dec 2019 10:39:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cwx4kOEEn6e/6WNibFa3lEhkL9MoU778cFhvUXhhAfw=; b=QIRF+gZSk3FLM8
	DjoffB8gyqwTTAH2apgkBXwhpcGqHsUKOW4rw9AqnFewKg6kAAhY9bbow2jkeu9WweV1H8OOOzhdC
	QKsxdzBOJraNo6fgqqqA9Ua4LRGConodsj6GO/WmYQb9t/4ZxNhCX00aO/xXJij5xzMzl71SJdL7g
	gHN5v1txr+30nM10+xBsVf7w6dGHKQtFYmKzH8Z2PIrVXmcihqRa1y4+OQiNTrZ0vWNl8WRSOhdGB
	DSqsH+uahixzHXUIyurJnbjqzRSXLX50p53yjXpQS/MgobkFy8+xMuf2CVo8iqa6teUYvEezJilc/
	cC95fZ9M/8PCx/iAJbOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifKwj-0000HG-TC; Thu, 12 Dec 2019 09:39:45 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifKwW-0000BY-81
 for linux-nvme@lists.infradead.org; Thu, 12 Dec 2019 09:39:33 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id E2FEB68B05; Thu, 12 Dec 2019 10:39:28 +0100 (CET)
Date: Thu, 12 Dec 2019 10:39:27 +0100
From: Christoph Hellwig <hch@lst.de>
To: "Engel, Amit" <Amit.Engel@Dell.com>
Subject: Re: [PATCH] nvmet: fix per feat data len for get_feature
Message-ID: <20191212093927.GA3388@lst.de>
References: <20191210072201.9631-1-chaitanya.kulkarni@wdc.com>
 <20191212090717.GA2399@lst.de>
 <MWHPR19MB14877764B733AF1DBA135A96EE550@MWHPR19MB1487.namprd19.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MWHPR19MB14877764B733AF1DBA135A96EE550@MWHPR19MB1487.namprd19.prod.outlook.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_013932_454087_89232612 
X-CRM114-Status: UNSURE (   6.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 09:14:15AM +0000, Engel, Amit wrote:
> Chaitanya, do you fix the double author line? Do you want me to do it?

We usually handle such minor nitpicks when applying the patch, no need
to resend.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
