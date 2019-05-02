Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2CE1194C
	for <lists+linux-nvme@lfdr.de>; Thu,  2 May 2019 14:48:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BVp24GEA0pCU6YirQ63NQIfOY9qmQkhvT8SSmccnI2s=; b=KyGSdk6jdYirke
	YFqgOgfw0Igj8hYtNmUd85P6ceMTmQMKK/s3Yeu1JSizLuEXmBumICbBEAwqzJXRgbpzMELMdwS1t
	pSK/jvQCp23+T2sfYKYAvzb/AiQilxa1UvcHXMhmZ2ABXcRYDo+3vvokiPSEZvsQ5lPA0KbizrJOI
	BgRGwCstFD0AMzYy2cNLubgwGmmhXkdCivRRGIUtKUMDzJ43EF+oJjTbSYLBdIWstG0ho0+C7vTzd
	T/s61X4KQRR6MQzbZlvx/jH8ukxgKLf6hinPBVkqaI2T63C9uw+F9Gi2Lvk+s+02jUsW9qghvCc+H
	EeL7YmsERd71mUnOhhtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMB7z-0008LR-Kq; Thu, 02 May 2019 12:47:55 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMB7u-0008Kx-V9
 for linux-nvme@lists.infradead.org; Thu, 02 May 2019 12:47:52 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hMB7s-0000qc-KI; Thu, 02 May 2019 14:47:48 +0200
Message-ID: <f0f772e5e33519dac93672be26fa7995f8109721.camel@sipsolutions.net>
Subject: Re: [PATCH 2/4] devcoredump: allow to create several coredump files
 in one device
From: Johannes Berg <johannes@sipsolutions.net>
To: Akinobu Mita <akinobu.mita@gmail.com>, linux-nvme@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Date: Thu, 02 May 2019 14:47:47 +0200
In-Reply-To: <1556787561-5113-3-git-send-email-akinobu.mita@gmail.com>
 (sfid-20190502_105944_673346_AEC5725E)
References: <1556787561-5113-1-git-send-email-akinobu.mita@gmail.com>
 <1556787561-5113-3-git-send-email-akinobu.mita@gmail.com>
 (sfid-20190502_105944_673346_AEC5725E)
X-Mailer: Evolution 3.28.5 (3.28.5-2.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_054751_010003_912DD215 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, 2019-05-02 at 17:59 +0900, Akinobu Mita wrote:
> 
>  static void devcd_del(struct work_struct *wk)
>  {
>  	struct devcd_entry *devcd;
> +	int i;
>  
>  	devcd = container_of(wk, struct devcd_entry, del_wk.work);
>  
> +	for (i = 0; i < devcd->num_files; i++) {
> +		device_remove_bin_file(&devcd->devcd_dev,
> +				       &devcd->files[i].bin_attr);
> +	}

Not much value in the braces?

> +static struct devcd_entry *devcd_alloc(struct dev_coredumpm_bulk_data *files,
> +				       int num_files, gfp_t gfp)
> +{
> +	struct devcd_entry *devcd;
> +	int i;
> +
> +	devcd = kzalloc(sizeof(*devcd), gfp);
> +	if (!devcd)
> +		return NULL;
> +
> +	devcd->files = kcalloc(num_files, sizeof(devcd->files[0]), gfp);
> +	if (!devcd->files) {
> +		kfree(devcd);
> +		return NULL;
> +	}
> +	devcd->num_files = num_files;

IMHO it would be nicer to allocate all of this in one struct, i.e. have

struct devcd_entry {
	...
	struct devcd_file files[];
}

(and then use struct_size())

> @@ -309,7 +339,41 @@ void dev_coredumpm(struct device *dev, struct module *owner,
>   put_module:
>  	module_put(owner);
>   free:
> -	free(data);
> +	for (i = 0; i < num_files; i++)
> +		files[i].free(files[i].data);
> +}

and then you don't need to do all this kind of thing to free

Otherwise looks fine. I'd worry a bit that existing userspace will only
capture the 'data' file, rather than a tarball of all files, but I guess
that's something you'd have to work out then when actually desiring to
use multiple files.

johannes


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
